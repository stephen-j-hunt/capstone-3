<template>
  <div class="card">
    <div class="card-image" @click="navigateToDetail">
      <img v-bind:src="movie.poster" class="poster" alt="" />
    </div>
    <div class="card-title">
      <h4>{{ movie.title }}</h4>
    </div>
    <div class="card-btns">
      <button
        v-if="isFavorite === false"
        class="add-favorite-btn"
        @click="addToFavorites"
      >
        Favorite
        <!-- {{ isFavorite ? "Remove Favorite" : "Favorite" }} -->
      </button>
      <button
        v-else-if="isFavorite === true"
        class="remove-favorite-btn"
        @click="removeFromFavorites"
      >
        Remove Favorite
      </button>
      
      <button
        v-if="isOnWatchlist === false"
        class="add-to-watchlist-btn"
        @click="addMovieToWatchlist"
      >
        +
      </button>
      <button
        v-else-if="isOnWatchlist === true"
        class= "remove-watchlist-btn"
        @click="deleteMovieFromWatchlist">

        -
      </button>
    </div>
  </div>
</template>

<script>
import MovieService from "../services/MovieService";
export default {
  name: "movie-card",
  props: ["movie"],
  computed: {
    isFavorite() {
      // favorites is an array of movie objects
      if (
        this.$store.state.favorites.find((movie) => movie.id === this.movie.id)
      ) {
        return true;
      } else {
        return false;
      }
    },
    isOnWatchlist() {
      if(
        this.$store.state.watchlist.find((movie) => movie.id == this.movie.id)
      ) {
        return true;
      }else {
        return false;
      }
    }
  },
  methods: {
    navigateToDetail() {
      this.$router.push({
        name: "movie-card-detail",
        params: { id: this.movie.id },
      });
    },
    addToFavorites() {
      MovieService.addFavorite(this.$store.state.user, this.movie).then(() => {
        this.$store.commit("ADD_FAVORITE", this.movie);
      });
    },
    removeFromFavorites() {
      MovieService.deleteFavorite(this.$store.state.user, this.movie).then(
        () => {
          this.$store.commit("REMOVE_FAVORITE", this.movie);
        }
      );
    },
    addMovieToWatchlist() {
      MovieService.addToWatchlist(this.$store.state.user, this.movie).then(
        () => {
          this.$store.commit("ADD_TO_WATCHLIST", this.movie);
        }
      );
    },
    deleteMovieFromWatchlist() {
      MovieService.deleteFromWatchlist(this.$store.state.user, this.movie).then(
        () => {
          this.$store.commit("DELETE_FROM_WATCHLIST", this.movie);
        }
      );
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
  display: flex;
  flex-direction: column;
  justify-content: center;
}
.card-btns {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  margin: 5px;
}
.card-btns button {
  border-radius: 6px;
  background-color: #ffc107;
  font-size: 14px;
}
.card-btns button:hover {
  /* background-color: #ffc107; */
  background-color: wheat;
  color: #333;
}
.card-title {
  display: block;
}
h4 {
  margin: 10px;
}
.card-image {
  cursor: pointer;
  object-fit: contain;
}
.poster {
  height: 150px;
  width: 100px;
}
</style>