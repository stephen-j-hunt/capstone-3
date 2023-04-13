<template>
  <div>
    <label for="genres">Select genres:</label>

    <table>
      <tr>
        <th>Genre Name:</th>
      </tr>
      <tbody>
        <tr v-for="genre in $store.state.genres" :key="genre.id">
          <td>
            <label for="genreId">{{ genre.genreName }}</label>
            <input
              type="checkbox"
              name="genreId"
              :value="genre.id"
              v-model="selectedGenres"
              
            />
          </td>
        </tr>
      </tbody>
    </table>
    <button type="submit" @click="pushSelectedGenres()">Add genres</button> 
    <div>
      <h3>User Preferences</h3>
      <ul>
        <li v-for="genre in selectedGenres" :key="genre.id">
          {{ genre.genreName }}
        </li>
      </ul>
    </div> 
  </div>
</template>
<script>
import MovieService from "../services/MovieService";
export default {
  created() {
    MovieService.getAllGenres().then((response) => {
      console.log(`loaded ${response.data.length} genres`);
      this.$store.commit("SET_GENRES", response.data);
    });
    this.getUserPref(this.currentUserId);
  },
  data() {
    return {
      selectedGenres: [],
      newGenres: [],
    };
  },
  computed: {
    currentUserId() {
      return this.$store.state.user.id;
    },
  },
  methods: {
    getUserPref(id) {
      MovieService.getGenreByUserId(id).then((response) => {
        this.selectedGenres = response.data.genres.map(g => g.id);
      });
    },
    selectGenres(gId) {
      const userGenreDto = { userId: this.currentUserId, genreId: gId };
      this.newGenres.push(userGenreDto);
    },
    pushSelectedGenres() {
      this.newGenres.forEach((selectedId) => {
        const userGenreDto = {
          userId: this.currentUserId,
          genreId: selectedId,
        };
        MovieService.addGenreToPref(userGenreDto).then((response) => {
          if (response.status === 201) {
            alert("added genre");
            this.getUserPref(this.currentUserId);
            this.$store.commit("SET_PREFERRED_GENRES", this.selectedGenres)
          }
        });
      });
    },
  },
};
</script>







