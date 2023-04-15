<template>
  <div v-if="movie" class="movie-card-details-container">
    <h1 class="movie-title">{{ movie.title }}</h1>
    <img class="movie-image" :src="movie.poster" :alt="movie.title" />
    <h3 class="movie-release-date">{{ movie.releaseDate }}</h3>
    <p class="movie-description">{{ movie.overview }}</p>
  </div>
</template>

<script>
import MovieService from "../services/MovieService";

export default {
  name: "movie-card-detail",
  data() {
    return {
      movie: null,
    };
  },
  created() {
    MovieService.getMovieById(this.$route.params.id).then((response) => {
      this.movie = response.data;
    });
  },
};
</script>

<style scoped>
.movie-card-details-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: 0 auto;
  max-width: 800px;
  padding: 20px;
  background-color: rgb(51, 49, 49);
  border: 10px solid #FFC107;
  border-radius: 20px;
  box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.2);
}

.movie-title {
  font-size: 3rem;
  margin: 10px 0;
  text-align: center;
  text-transform: uppercase;
  letter-spacing: 2px;
  font-weight: bold;
  text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.2);
}

.movie-image {
  max-width: 100%;
  height: 100px;
  margin: 20px 0;
}

.movie-release-date {
  font-size: 1.2rem;
  margin: 10px 0;
}

.movie-description {
  font-size: 1.1rem;
  line-height: 1.5;
  text-align: justify;
}
</style>
