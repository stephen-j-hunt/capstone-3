<template>
  <div class="site-description">
    <h4>
      This site gives you recommendations based on your favorite movie-genres!
    </h4>
    <button @click="goToRegisterPage">Get Started Here!</button>
  </div>
</template>

<script>
export default {
  methods: {
    goToRegisterPage() {
      this.$router.push({ name: "register" });
    },
  },
};
</script>

<style scoped>
.site-description {
  font-size: 25px;
  text-align: center;
  margin: 20px;
  border-radius: 20px;
  /* background-color: rgba(0, 0, 0, 0.7); */
}
h4 {
  /* margin-top: 70px; */
  font-size: 20px;
}

button {
  padding: 5px 25px;
  font-size: 23px;
  background-color: #ffc107;
  border-radius: 6px;
}
button:hover {
  background-color: wheat;
  cursor: pointer;
}
</style>