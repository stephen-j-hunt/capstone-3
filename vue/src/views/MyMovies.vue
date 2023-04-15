<template>
  <div class="my-movies">
    <h1>Movies</h1>
    <div>
      <h2>My Favorites</h2>
      <div class="movies">
        <movie-card
          v-for="movie in getFavorites"
          :key="movie.id"
          :movie="movie"
        />
      </div>
    </div>
    <div>
      <h2>My Watchlist</h2>
      <div class="movies">
        <movie-card
          v-for="movie in getWatchlist"
          :key="movie.id"
          :movie="movie"
        />
      </div>
    </div>
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
export default {
  name: "my-movies",
  components: {
    MovieCard,
  },
  computed: {
    getFavorites() {
      return this.$store.state.userMovies.favorites;
    },
    getWatchlist() {
      return this.$store.state.userMovies.watchlist;
    },
  },
};
</script>

<style scoped>
.movies {
  display: flex;
  flex-wrap: wrap;
}
</style>
