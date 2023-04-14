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
            {{ genre.genreName }}
          </td>
          <td>
            <input
              type="checkbox"
              name="genreId"
              :value="genre.id"
              v-model="$store.state.user.preferences"
            />
          </td>
        </tr>
      </tbody>
    </table>
    <button @click="updatePreferences">Save Prefs</button>
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
        this.selectedGenres = response.data.genres.map((g) => g.id);
      });
    },
    selectGenres(gId) {
      const userGenreDto = { userId: this.currentUserId, genreId: gId };
      this.newGenres.push(userGenreDto);
    },
    updatePreferences() {
      window.alert(this.$store.state.user.preferences.length);
      MovieService.addUserPrefs(this.$store.state.user.id, {
        genres: this.$store.state.user.preferences.map((prefs) => {
          return { id: prefs };
        }),
      })
        .then(window.alert("prefences saved"))
        .catch(window.alert("failed to save preferences"));
      // this.newGenres.forEach((selectedId) => {
      //   const userGenreDto = {
      //     userId: this.currentUserId,
      //     genreId: selectedId,
      //   };
      //   MovieService.addGenreToPref(userGenreDto).then((response) => {
      //     if (response.status === 201) {
      //       alert("added genre");
      //       this.getUserPref(this.currentUserId);
      //       this.$store.commit("SET_PREFERRED_GENRES", this.selectedGenres);
      //     }
      //   });
      // });
    },
  },
};
</script>







