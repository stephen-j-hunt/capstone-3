<template>
  <div>
    <label for="genres">Select genres:</label>
    <select multiple v-model="selectedGenres" id="genres">
      <option v-for="genre in genres" :key="genre.id" :value="genre.id">
        {{ genre.name }}
      </option>
    </select>
  </div>
</template>
<script>
import MovieService from "../services/MovieService";
export default {
  data() {
    return {
      genres: [],
      selectedGenres: [],
    };
  },
  mounted() {
    // Here you would fetch the genres from your database and set them to the `genres` data property
    // For example, using axios:
    MovieService.get("/genres")
      .then((response) => {
        this.genres = response.data;
      })
      .catch((error) => {
        console.error(error);
      });
  },
};
</script>







