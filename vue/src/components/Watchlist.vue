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
  justify-content: center;
}
</style>