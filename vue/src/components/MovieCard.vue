<template>
  <div class="card">
    <div class="card-image">
      <img v-bind:src="movie.poster" alt="" />
    </div>
    <div class="card-content">
      <h4>{{ movie.title }}</h4>
      <button>Like</button>
      <button>Disklike</button>
    </div>
  </div>
</template>

<script>
export default {
  props: ["movie"],
};
</script>

<style scoped>
.card {
  display: flex;
  flex-direction: column;
}
.card-image {
  height: 2rem;
  width: 80%;
}
.card-content {
  flex: 1;
}
</style>