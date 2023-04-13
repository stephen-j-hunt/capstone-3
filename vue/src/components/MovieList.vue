<template>

<div>
  <h2>Genre Name</h2>
  <div class="movie-cards">
    <movie-card
      v-for="movie in filteredMoviesByGenre"
      :key="movie.id"
      v-bind:movie="movie"
    />
  </div>
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
    filteredMoviesByGenre() {
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

h2{
  text-align: center;
}
</style>

