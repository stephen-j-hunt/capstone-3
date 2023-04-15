<template>
  <div class="card">
    <div class="card-image" @click="navigateToDetail">
      <img v-bind:src="movie.poster" alt="" />
    </div>
    <div class="card-title">
      <h4>{{ movie.title }}</h4>
    </div>
    <div class="card-btns">
      <button class="add-favorite-btn" @click="addToFavorites">Favorite</button>
      <button class="dislike-btn">Dislike</button>
      <button
        class="add-to-watchlist-btn"
        title="Add to Watchlist"
        @click="addToWatchlist"
      >
        +
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: "movie-card",
  props: ["movie"],
  methods: {
    navigateToDetail() {
      this.$router.push({
        name: "movie-card-detail",
        params: { id: this.movie.id },
      });
    },
    addToFavorites() {
      this.$store.commit("ADD_FAVORITE", this.movie);
    },
    addToWatchlist() {
      this.$store.commit("ADD_TO_WATCHLIST", this.movie);
    },
  },
};
</script>

<style scoped>
div.card {
  border: 3px solid #ffc107;
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
.card-btns button {
  border-radius: 8px;
}
.card-btns button:hover {
  background-color: #ffc107;
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