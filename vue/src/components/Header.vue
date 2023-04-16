<template>
  <!-- <header> -->
  <!-- <div> -->
  <div class="header-container">
    <img src="../assets/logo.png" alt="logo" />
    <div class="title">Movie Elevator</div>
  </div>
  <!-- </div> -->
  <!-- </header> -->
</template>

export default {
  name: "page-header"
}


<style scoped>
@import url("https://fonts.cdnfonts.com/css/cinema-st");
/* header {
  align-items: center;
  background-color: #d80000;
  width: 100%;
} */

.header-container {
  display: flex;
  align-items: center;
  /* justify-content: center; */
  height: 100%;
  background: rgb(121, 12, 4);
  background: radial-gradient(circle, rgb(113, 19, 36) 5%, rgb(36, 4, 10) 70%);
  /* background-color: #d80000; */
  /* background-color: rgb(0, 0, 0); */
}

img {
  margin-left: 1rem;
  margin-right: 1rem;
  /* object-fit: contain; */
  padding: 20px;
  height: 90%;
}

.title {
  display: flex;
  justify-content: center;
  font-family: "Cinema St", sans-serif;
  color: white;
  margin-left: 1.75rem;
  font-size: 5rem; /* Adjust the font size here */
}
</style>

