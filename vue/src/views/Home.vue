<template>
  <div class="home">
    <h1>Welcome to Movie Elevator</h1>
    <home-img />
    <site-description />
    <home-movie-preview />
    <h4>To get personalized content, Register an account now!</h4>
  </div>
</template>

<script>
import HomeImg from "../components/HomeImg.vue";
import SiteDescription from "../components/SiteDescription.vue";
import HomeMoviePreview from "../components/HomeMoviePreview.vue";
export default {
  name: "home",
  components: {
    HomeImg,
    SiteDescription,
    HomeMoviePreview,
  },
};
</script>

<style scoped>
.home {
  text-align: center;
}
</style>
