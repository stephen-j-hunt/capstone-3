<template>
  <div id="app">
    <page-header />
    <nav-bar />
    <div class="main-content">
      <router-view />
    </div>
  </div>
</template>

<script>
import navBar from "./components/Navbar.vue";
import pageHeader from "./components/Header.vue";
import MovieService from "./services/MovieService";

export default {
  components: {
    pageHeader,
    navBar,
  },
  created() {
    MovieService.getAllGenres().then((response) => {
      console.log(`loaded ${response.data.length} genres`);
      this.$store.commit("SET_GENRES", response.data);
    });
  },
};
</script>

<style>
body {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  color: white;
}

#app {
  margin: 0;
  padding: 0;
  display: grid;
  height: 100vh;
  grid-template-rows: 100px 1fr;
  grid-template-columns: 160px 1fr;
  grid-template-areas:
    "header header"
    "navbar main";
}
Header {
  grid-area: header;
}
Navbar {
  grid-area: navbar;
}
.main-content {
  grid-area: main;
  width: 100%;
  height: 100%;
  overflow: scroll;
  background: rgb(211, 209, 218);
  background: radial-gradient(
    circle,
    rgb(191, 191, 192) 5%,
    rgba(41, 11, 28, 1) 83%
  );
}
</style>

   