<template>
  <div class="my-account">
    <div class="account">
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
.my-account {
  display: flex;
  justify-content: center;
  
}
</style>