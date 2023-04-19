<template>
  <div class="recommended-movies">
    <h1>Recommended Movies For You</h1>
    <loader v-if="isLoading"></loader>

    <slot class="movie-list-container" v-else>

      <movie-list
        v-for="genreId in $store.state.user.preferences"
        :key="genreId"
        v-bind:genreId="genreId"
        @show-detail="showMovieDetail"
      />
    </slot>
  </div>
</template>

<script>
import MovieCardDetail from "../views/MovieCardDetail.vue";
import MovieList from "../components/MovieList.vue";
import Loader from "../components/Loader.vue";

export default {
  name: "recommended-movies",
  components: {
    MovieList,
    Loader,
  },
  data() {
    return {
      isLoading: true,
      dynamicComponent: MovieCardDetail,
      selectedMovie: null,
    };
  },
  mounted() {
    setTimeout(() => {
      this.isLoading = false;
    }, 2000);
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
.genre {
  text-align: center;
}
.recommended-movies {
  display: flex;
  flex-direction: column;
  text-align: center;
}
</style>