<template>
  <div class="overlay">
    <div class="home">
      <h1>Elevate Your Cinematic Taste!</h1>
      <!-- <p>You must be authenticated to see this</p> -->
      <site-description class="description" />
      <home-movie-preview class="preview" />
    </div>
  </div>
</template>

<script>
import SiteDescription from "../components/SiteDescription.vue";
import HomeMoviePreview from "../components/HomeMoviePreview.vue";
export default {
  name: "home",
  components: {
    SiteDescription,
    HomeMoviePreview,
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css?family=Sacramento&display=swap");
h1 {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 125px;
  text-decoration: underline;
  color: #fff;
  font-family: "Sacramento", cursive;
  text-shadow: 0 0 5px #ffa500, 0 0 15px #ffa500, 0 0 20px #ffa500,
    0 0 40px #ffa500, 0 0 60px #ff0000, 0 0 10px #ff8d00, 0 0 98px #ff0000;
  color: #fff6a9;

  display: flex;
  justify-content: center;
  align-items: center;
  height: 30vh;
}
.description {
  height: 20vh;
}
.home {
  text-align: center;
  background-color: rgba(0, 0, 0, 0.7);
  height: 100%;
}
.preview {
  height: 30vh;
}
.overlay {
  background-image: url("../assets/movie-collage2.jpg");
  top: 0;
  width: 100%;
  height: 100%;
}
</style>
