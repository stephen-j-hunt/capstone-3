<template>
  <div id="app">
    <header>
      <page-header />
    </header>
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
  // Load user preferences from local storage
  const userPreferences = localStorage.getItem("userPreferences");
  if (userPreferences) {
    this.$store.commit("SET_USER_PREFS", JSON.parse(userPreferences));
  }

  MovieService.getAllGenres().then((response) => {
    console.log(`loaded ${response.data.length} genres`);
    this.$store.commit("SET_GENRES", response.data);
  });
},
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Saira+Semi+Condensed&display=swap");
body {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: "Saira Semi Condensed", sans-serif;
  color: white;
}

#app {
  margin: 0;
  padding: 0;
  display: grid;
  height: 100vh;
  grid-template-rows: 100px 1fr;
  grid-template-columns: 170px 1fr;
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
  background: radial-gradient(circle, rgb(191, 191, 192) 5%, rgb(0, 0, 0) 70%);
}
</style>

   