<template>
  <div class="movie-cards">
    <movie-card
      v-for="movie in filteredMovies"
      :key="movie.id"
      v-bind:movie="movie"
    />
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
import MovieService from "../services/MovieService";
export default {
  name: "movie-list",
  components: {
    MovieCard,
  },
  computed: {
    filteredMovies() {
      const moviesFilter = this.$store.state.movies;
      return moviesFilter;
    },
  },
  created() {
    MovieService.getAll().then((response) => {
      this.$store.commit("SET_MOVIES", response.data);
    });
  },
};
</script>

<style scoped>
.movie-cards {
  display: flex;
  width: 100%;
  justify-content: center;
  flex-wrap: wrap;
}
</style>

