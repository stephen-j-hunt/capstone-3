<template>
  <div class="recommended-movies">
    <h1>We found these movies for your selected genres</h1>
    <loader class="loader" v-if="isLoading"></loader>

    <slot class="movie-list-container" v-else>
      <movie-list
        v-for="genreId in sortedGenres"
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
  computed: {
  sortedGenres() {
    // eslint-disable-next-line vue/no-side-effects-in-computed-properties
    return this.$store.state.user.preferences.sort();
    },
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
    
}

</script>

<style scoped>
h1 {
  text-align: center;
}
.recommended-movies{
  display: flex;
    flex-direction: column;
    text-align: center;
    overflow: hidden;
}

</style>