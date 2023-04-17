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
import MovieService from '../services/MovieService';

export default {
  components: {
    MovieCard,
  },
  computed: {
    getWatchlist() {
      return this.$store.state.watchlist;
    },
  },
  created() {
    MovieService.getWatchlist(this.$store.state.user).then((response) => {
      this.$store.commit("SET_WATCHLIST", response.data);
    });
  },
};
</script>

<style scoped>
.movies {
  display: flex;
  justify-content: center;
}
</style>