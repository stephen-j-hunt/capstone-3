<template>
  <div class="recommended-movies">
    <h1>Recommended Movies For You</h1>

    <div class="movie-list-container">
      <movie-list
        v-for="genreId in $store.state.user.preferences"
        :key="genreId"
        v-bind:genreId="genreId"
        @show-detail="showMovieDetail"
      />
    </div>
  </div>
</template>

<script>
import MovieCardDetail from "../views/MovieCardDetail.vue";
import MovieList from "../components/MovieList.vue";

export default {
  name: "recommended-movies",
  components: {
    MovieList,
  },
  data() {
    return {
      dynamicComponent: MovieCardDetail,
      selectedMovie: null,
    };
  },

  methods: {
    showMovieDetail(movie) {
      this.selectedMovie = movie;
      this.$modal.show("movie-card-detail");
    },
  },
};
</script>

<style scoped>
h1 {
  text-align: center;
}
</style>