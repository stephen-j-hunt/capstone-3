<template>
  <div>
    <div class="movies">
      <movie-card
        v-for="movie in userFavorites"
        :key="movie.id"
        :movie="movie"
      />
    </div>
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
import MovieService from "../services/MovieService";
export default {
  components: {
    MovieCard,
  },
  computed: {
    userFavorites() {
      return this.$store.state.favorites;
    },
  },
  // sets the favorites list to the store and gets it from the database when page is created
  created() {
    MovieService.getFavorites(this.$store.state.user).then((response) => {
      this.$store.commit("SET_FAVORITES", response.data);
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