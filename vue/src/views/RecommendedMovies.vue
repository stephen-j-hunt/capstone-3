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
import Vue from "vue";
import MovieList from "../components/MovieList.vue";
import VModal from "vue-js-modal";

Vue.use(VModal);

export default {
  name: "recommended-movies",
  components: {
    MovieList,
  },
  created() {
    this.$modal.registerComponent("movie-card-detail", () =>
      import("../views/MovieCardDetail.vue")
    );
  },
  beforeDestroy() {
    this.$modal.unregisterComponent("movie-card-detail");
  },
  methods: {
    showMovieDetail(movie) {
      this.$modal.show("movie-card-detail", { movie });
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
</style>