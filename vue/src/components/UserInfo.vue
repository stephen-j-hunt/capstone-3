<template>
  <div>
    <h1>Welcome {{ getUser.username }}!</h1>
    <h3>
      Please select the genres you enjoy to enhance your browsing experience!
    </h3>
  </div>
</template>

<script>
import MovieService from "../services/MovieService";
// import { mapGetters } from "../store";

export default {
  data() {
    return {};
  },
  computed: {
    // ...mapGetters(["getUser"]),
    getUser() {
      return this.$store.getters.getUser;
    },
  },
  created() {
    MovieService.getUserById(this.getUser.id).then((response) => {
      if (!response.data.preferences) {
        response.data.preferences = [];
      }
      this.$store.commit("SET_USER", response.data);
    });
  },
};
</script>

<style>
</style>