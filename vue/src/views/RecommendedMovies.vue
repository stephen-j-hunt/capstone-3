<template>
  <div class="recommended-movies">
    <h1>Recommended Movies</h1>

    <div class="movie-list-container">
      <movie-list
        v-for="genreId in $store.state.user.preferences"
        :key="genreId"
        v-bind:genreId="genreId"
      />
    </div>
  </div>
</template>

<script>
import MovieList from "../components/MovieList.vue";
export default {
  name: "recommended-movies",
  components: {
    MovieList,
  },
};
</script>

<style scoped>
h1 {
  text-align: center;
}
.genre {
  text-align: center;
}
</style>