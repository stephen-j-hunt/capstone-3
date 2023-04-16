<template>
  <div class="movie-detail">
    <div class="movie-detail-image">
      <img v-bind:src="movie.poster" alt="" />
    </div>
    <div class="movie-detail-title">
      <h4>{{ movie.title }}</h4>
    </div>
    <div class="movie-detail-description">
      <p>{{ movie.description }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: "movie-detail",
  props: ["movie"],
};
</script>

<style scoped>
/* Add your styles here */
</style>