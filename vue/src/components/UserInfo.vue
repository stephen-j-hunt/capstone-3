<template>
  <div>
    <h1>Welcome {{ getUser.username }}!</h1>
  </div>
</template>

<script>
import MovieService from '../services/MovieService'

export default {
  data() {
    return {}
  },
  computed: {
    getUser(){  
      return this.$store.getters.getUser;
    }
  },
   created() {
    MovieService.getUserById(this.getUser.id).then((response) => {
      this.$store.commit("SET_USER", response.data);
    });
  }
};
</script>

<style>
</style>