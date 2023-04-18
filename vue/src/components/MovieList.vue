<template>
  <div>
    <h2>
      {{ genreName }}
    </h2>
    <div class="movie-cards">
      <movie-card
        v-for="movie in movies"
        :key="movie.id"
        v-bind:movie="movie"
        @show-detail="$emit('show-detail', $event)"
      />
    </div>
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
import MovieService from "../services/MovieService";
export default {
  name: "movie-list",
  props: ["genreId"],
  data() {
    return {
      movies: [],
    };
  },
  components: {
    MovieCard,
  },
  computed: {
    getUser() {
      return this.$store.getters.getUser;
    },
    genreName() {
      const variable = this.$store.state.genres.find((genre) => {
        return genre.id == this.genreId;
      });
      return variable ? variable.genreName : "";
    },
  },
  created() {
    MovieService.getMoviesByGenreId(this.genreId).then((response) => {
      this.movies = response.data;
    });
  },
};
</script>

<style scoped>
.movie-cards {
  display: flex;
  width: 100%;
  justify-content: center;
  flex-wrap: wrap;
}

h2 {
  text-align: center;
}
</style>

