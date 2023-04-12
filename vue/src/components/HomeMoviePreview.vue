npm<template>
  <div class="home-movie-preview">
    <img
      v-bind:src="movie.poster"
      v-for="movie in randomMovies"
      :key="movie.id"
      class="poster"
    />
  </div>
</template>

<script>
import MovieService from "../services/MovieService";

export default {
  computed: {
    randomMovies() {
      return this.$store.getters.getRandomMovies;
    },
  },

  created() {
    MovieService.getAll().then((response) => {
      this.$store.commit("SET_MOVIES", response.data);
    });
  },
};
</script>

<style scoped>
.home-movie-preview {
  /* border: 3px solid; */
  /* overflow-x:auto; */
  height: 250px;

  display: flex;
  gap: 10px;

  justify-content: space-evenly;
  align-items: center;
}
.poster {
  width: auto;
  /* display: flex; */
  /* justify-content: center;
   align-items: center; */
  height: 90%;

  border: 5px solid;
  gap: 5px;
}
</style>