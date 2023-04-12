<template>
  <div class="browse-movies">
    <h1>Recommend Movies</h1>
    <h2 class="genre">Movie Genre 1</h2>
    <div class="movie-list-container">
      <movie-list />
    </div>
    <h2 class="genre">Movie Genre 2</h2>
    <div class="movie-list-container">
      <movie-list />
    </div>
  </div>
</template>

<script>
import MovieList from "../components/MovieList.vue";
export default {
  name: "browse-movies",
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