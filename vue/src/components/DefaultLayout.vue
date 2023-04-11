<template>
  <div class="default-layout">
    <Header/>
    <div class="layout-container">
      <Navbar/>
      <main>
        <slot></slot>
      </main>
    </div>
  </div>
</template>

<script>
import Header from '/src/components/Header.vue';
import Navbar from '/src/components/Navbar.vue';

export default {
  components: {
    Header,
    Navbar,
  },
};
</script>

<style scoped>
.default-layout {
  display: flex;
  flex-direction: column;
  height: 100%;
}

.layout-container {
  display: flex;
  flex: 1;
}

main {
  flex: 1;
}
</style>
