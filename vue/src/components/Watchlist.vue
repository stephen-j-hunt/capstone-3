<template>
  <div>
    <div class="movies">
      <movie-card
        v-for="movie in getWatchlist"
        :key="movie.id"
        :movie="movie"
      />
    </div>
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
// import MovieService from "../services/MovieService";
export default {
  components: {
    MovieCard,
  },
  computed: {
    getWatchlist() {
      return this.$store.state.watchlist;
    },
  },
};
</script>

<style scoped>
.movies {
  display: flex;
  justify-content: left;
  flex-wrap: wrap;
  width: 95vw;
  margin: 0px 25px;
}
</style>