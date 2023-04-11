<template>
  <div id="app">
    <DefaultLayout>
      <template v-slot:Main-view> 
      <router-view/>
      </template>
    </DefaultLayout>
  </div>
</template>

<script>
import DefaultLayout from './components/DefaultLayout.vue';

export default {
  components: {
    DefaultLayout,
  },
};
</script>

<style scoped>





</style>

   