<template>
  <div class="home-movie-preview">
    <movie-card v-for="movie in movies" :key="movie.id" v-bind:movie="movie" />
  </div>
</template>

<script>
import MovieCard from "./MovieCard.vue";

export default {
  data() {
    return {
      movies: [],
    };
  },
  components: {
    MovieCard,
  },
};
</script>

<style scoped>
.home-movie-preview {
  border: 3px solid;
  margin-top: 10px;
  padding: 10px;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-evenly;
}
</style>