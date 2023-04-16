<template>
  <div class="my-movies">
    <h1>My Movies</h1>

    <h2>Favorites</h2>
    <favorites class="movies" />
    <h2>Watchlist</h2>
    <watchlist class="movies" />
  </div>
</template>

<script>
import Favorites from "../components/Favorites.vue";
import Watchlist from "../components/Watchlist.vue";
export default {
  name: "my-movies",
  components: {
    Favorites,
    Watchlist,
  },
};
</script>

<style scoped>
.my-movies {
  display: flex;
  flex-direction: column;
  text-align: center;
}
</style>
