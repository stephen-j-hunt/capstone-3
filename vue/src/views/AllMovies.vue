<template>
  <div class="all-movies">
    <h1 >All Movies</h1>
    

    <div class="container-wrapper">

    <loader class="load" v-if="isLoading"></loader>
    
      <div class="movie-cards-container" v-else>
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
import Loader from "../components/Loader.vue";

export default {
  data() {
    return {
      isLoading: true,
      movies: [],
    };
  },
  mounted() {
    setTimeout(() => {
      this.isLoading = false;
    }, 2000);
  },
  components: {
    MovieCard,
    Loader,
  },
  created() {
    MovieService.getAll().then((response) => {
      this.movies = response.data;
    });
  },
};
</script>

<style scoped>
  #load {
    display: flex;
    flex-direction: column;
    text-align: center;
    
  }
h1 {
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