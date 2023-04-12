<template>
  <div class="home">
<<<<<<< HEAD
    <h1>Welcome to Movie Elevator!</h1>
    <!-- <p>You must be authenticated to see this</p> -->
=======
    <h1>Welcome to Movie Elevator</h1>
>>>>>>> f8e1763ae1808fdf060f882b30d66f5268aa61ad
    <home-img />
    <site-description />
    <home-movie-preview />
    <h4>
      <router-link class="reg-link" :to="{ name: 'register' }">
        To get personalized content, Register an account now!
      </router-link>
    </h4>
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
<<<<<<< HEAD
.reg-link {
  color: gold;
  font-size: 18px;
}
=======
>>>>>>> f8e1763ae1808fdf060f882b30d66f5268aa61ad
</style>
