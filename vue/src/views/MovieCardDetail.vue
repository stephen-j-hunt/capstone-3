<template>
  <div class="movie-card-container">
    <movie-card />
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
export default {
  name: "movie-card-details",
  components: {
    MovieCard,
  },
};
</script>

<style>
</style>