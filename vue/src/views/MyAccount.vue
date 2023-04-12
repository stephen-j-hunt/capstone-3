<template>
  <div class="my-account">
    <h1>My Account</h1>

    <div>
      <user-info />
      <genre-menu />
    </div>
  </div>
</template>
<script>
import GenreMenu from "../components/GenreMenu.vue";
import UserInfo from "../components/UserInfo.vue";

export default {
  components: {
    GenreMenu,
    UserInfo,
  },
  name: "my-account",
};
</script>

<style scoped>
</style>