<template>
  <div class="my-account">
    <div class="account">
      <user-info />
      <loader id="load" v-if="isLoading"></loader>
      <div v-else>
      <h3>
      Please select the genres you enjoy to enhance your browsing experience!
    </h3>
      <genre-menu />
      </div>
    </div>
  </div>
</template>
<script>
import GenreMenu from "../components/GenreMenu.vue";
import UserInfo from "../components/UserInfo.vue";
import Loader from "../components/Loader.vue";

export default {
  name: "my-account",
  components: {
    GenreMenu,
    UserInfo,
    Loader,
  },
  data() {
    return{
      isLoading: true,
    }    
  },
  mounted() {
    setTimeout(() => {
      this.isLoading = false;
    }, 2000);
  }
};
</script>

<style scoped>
#load {
    display: flex;
    flex-direction: column;
    text-align: center; 
  }
.my-account {
  display: flex;
  justify-content: center;
  
}
</style>