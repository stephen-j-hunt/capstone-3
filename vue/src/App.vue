<template>
  <div id="app">
    <DefaultLayout>
      <router-view/>
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
#app {
  display: flex;
  min-height: 100vh;
}
</style>

   