<template>
  <div class="card" >
    <div class="card-image" @click="navigateToDetail">
      <img v-bind:src="movie.poster" alt="" />
    </div>
    <div class="card-title">
      <h4>{{ movie.title }}</h4>
    </div>
    <div class="card-btns">
      <button>Favorite</button>
      <button>Dislike</button>
      <button title="Add to Watchlist">+</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "movie-card",
  props: ["movie"],
  methods: {
    navigateToDetail() {
      this.$router.push({ name: 'movie-card-detail', params: { id: this.movie.id } });
    },
  },
};
</script>

<style scoped>
div.card {
  
  border: 3px solid #FFC107;
  border-radius: 10px;
  padding-top: 10px;
  padding-bottom: 10px;
  height: 260px;
  width: 200px;
  text-align: center;
  margin-right: 15px;
  margin-left: 15px;
  margin-bottom: 25px;
  background-color: rgb(51, 49, 49);
}
.card-btns {
  display: flex;
  justify-content: space-evenly;
}
.card-btns button:hover {
  background-color: #FFC107;
  color: #333;
}
.card-title {
  display: block;
}
.card-image {
  cursor: pointer;
  object-fit: contain;
}
</style>