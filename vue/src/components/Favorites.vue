<template>
  <div>
    <div class="movies">
      <movie-card
        v-for="movie in getFavorites"
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
    getFavorites() {
      return this.$store.state.favorites;
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