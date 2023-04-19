<template>
  <div>
    <h1 class="page-title">All Movies</h1>
    <div class="search-wrapper">
      <input
        type="search"
        placeholder="Search Movies..."
        class="search-bar"
        v-model="searchText"
      />
    </div>
    <div class="container-wrapper">
      <div class="movie-cards-container">
        <movie-card
          v-for="movie in filteredMovies"
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
      searchText: "",
    };
  },
  components: {
    MovieCard,
  },
  computed: {
    filteredMovies() {
      return this.movies.filter((movie) => {
        return movie.title
          .toLowerCase()
          .includes(this.searchText.toLowerCase());
      });
    },
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
.search-wrapper {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 40px;
}
.search-bar {
  padding: 10px;
  font-size: 20px;
  border-radius: 5px;
  border: none;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
  width: 300px;
}
</style>