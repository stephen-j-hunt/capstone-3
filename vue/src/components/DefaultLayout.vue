<template>
  <div class="default-layout">
    <Header/>
    <div class="layout-container">
      <Navbar/>
      <div class="main-cont">
      <main>
        <slot name="Main-view"></slot>
      </main>
      </div>
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
  /* justify-content: space-between; */
  /* justify-content: center; */
  flex: 1;
}

.main-cont {
  margin-top: 8rem;
  display: flex;
  justify-content: center;
  flex: 1;
  width: auto;
  overflow: hidden;
}


</style>
