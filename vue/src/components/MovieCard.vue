<template>
  <div class="card">
    <div class="card-image" @click="navigateToDetail">
      <img v-bind:src="movie.poster" class="poster" alt="" />
    </div>
    <div class="card-title">
      <h4>{{ movie.title }}</h4>
    </div>
    <div class="card-btns">
      <i
        class="fa-sharp fa-regular fa-heart awesome-btn"
        v-if="isFavorite === false"
        @click="addToFavorites"
        title="Add to Favorites"
      ></i>
      <i
        class="fa-sharp fa-solid fa-heart awesome-btn"
        v-if="isFavorite === true"
        @click="removeFromFavorites"
        title="Remove From Favorites"
      ></i>
      <i
        class="fa-regular fa-bookmark awesome-btn"
        v-if="isOnWatchlist === false"
        @click="addMovieToWatchlist"
        title="Add to Watchlist"
      ></i>
      <i
        class="fa-solid fa-bookmark awesome-btn"
        v-if="isOnWatchlist === true"
        @click="deleteMovieFromWatchlist"
        title="Remove from Watchlist"
      ></i>
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
      if (
        this.$store.state.watchlist.find((movie) => movie.id == this.movie.id)
      ) {
        return true;
      } else {
        return false;
      }
    },
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
  border: 1px solid #ffc107;
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
div.card:hover {
  background-color: rgb(88, 86, 86);
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
  color: white;
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
.awesome-btn {
  font-size: 25px;
  color: #ffc107;
}
.awesome-btn:hover {
  cursor: pointer;
  font-size: 30px;
}
</style>