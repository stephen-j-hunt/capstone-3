<template>
  <div class="card">
    <div class="card-image">
      <img v-bind:src="movie.poster" alt="" />
    </div>
    <div class="card-title">
      <h4>{{ movie.title }}</h4>
    </div>
    <div class="card-btns">
      <button>Like</button>
      <button>Dislike</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "movie-card",
  props: ["movie"],
};
</script>

<style scoped>
div.card {
  border: 3px gold solid;
  padding-top: 10px;
  padding-bottom: 10px;
  height: 260px;
  width: 200px;
  text-align: center;
  margin-right: 15px;
  margin-left: 15px;
  margin-bottom: 25px;
}
.card-btns {
  display: flex;
  justify-content: space-evenly;
}
.card-title {
  display: block;
}
.card-image {
  object-fit: contain;
}
</style>