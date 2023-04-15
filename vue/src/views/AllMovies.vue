<template>
  <div>
    <h1 class="page-title">All Movies</h1>
    <div class="container-wrapper">
      <div class="movie-cards-container">
        <movie-card
          v-for="movie in movies"
          :key="movie.id"
          v-bind:movie="movie"
          @show-detail="$emit('show-detail', $event)"
        />
      </div>
    </div>
  </div>
</template>

<script>
import MovieCard from "../components/MovieCard.vue";
import MovieService from "../services/MovieService";
export default {
  data() {
    return {
      movies: [],
    };
  },
  components: {
    MovieCard,
  },
  created() {
    MovieService.getAll().then((response) => {
      this.movies = response.data;
    });
  },
};
</script>

<style scoped>
.page-title {
  font-size: 50px;
  text-align: center;
}
.container-wrapper {
  display: flex;
  justify-content: center;
}
.movie-cards-container {
  display: flex;
  width: 70vw;
  flex-wrap: wrap;
  justify-content: center;
}
</style>