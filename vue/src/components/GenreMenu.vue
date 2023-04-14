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
    <button @click="updatePreferences">Save Genre Preferences</button>
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
  },
  computed: {
    currentUserId() {
      return this.$store.state.user.id;
    },
  },
  methods: {
    updatePreferences() {
      MovieService.addUserPrefs(this.$store.state.user).then(
        window.alert("Genre Prefences saved")
      );
    },
  },
};
</script>







