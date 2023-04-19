<template>
<div>
  <div class="my-movies">
    <h1>My Movies</h1>
    <loader class="loading" v-if="isLoading"></loader>

    <slot class="data" v-else>
    <h2>Favorites</h2 >


    <favorites class="movies" />
    
    <h2>Watchlist</h2>
    
    <watchlist class="movies" />
    </slot>
  </div>
</div>
</template>

<script>
import Favorites from "../components/Favorites.vue";
import Watchlist from "../components/Watchlist.vue";
import Loader from "../components/Loader.vue";

export default {
  name: "my-movies",
  components: {
    Favorites,
    Watchlist,
    Loader,
  },
  data() {
    return{
      isLoading: true,
    }    
  },
  mounted() {
    setTimeout(() => {
      this.isLoading = false;
    }, 2000);
  }
};
</script>

<style scoped>
.my-movies {
  display: flex;
  flex-direction: column;
  text-align: center;
}
</style>
