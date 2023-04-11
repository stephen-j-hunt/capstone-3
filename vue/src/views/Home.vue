<template>
  <div class="home">
    <h1>Home</h1>
    <p>You must be authenticated to see this</p>
    <home-img />
    <site-description />
    <div></div>
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
  display: block;
}
</style>
