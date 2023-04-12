<template>
  <header>
    <div class="header-container">
      <!-- <router-link to="/" class="logo-link"> -->
      <img src="../assets/logo.png" alt="logo" />
      <!-- </router-link> -->
      <div class="title">Movie Elevator</div>
    </div>
  </header>
</template>

export default {
  name: "page-header"
}


<style scoped>
header {
  align-items: center;
  background-color: #d80000;
  width: 100%;
}

.header-container {
  display: flex;
  align-items: center;
  height: 100%;
}
/* 
.logo-link {
  display: flex;
  align-items: center;
  text-decoration: none;
  padding: 0;
  margin-left: 1rem;
  border: none;
  background: none;
  font: inherit;
  color: inherit;
  cursor: pointer;
  outline: inherit;
} */

img {
  margin-left: 1rem;
  margin-right: 1rem;
  object-fit: contain;
  padding: 20px;
  height: 90%;
}

.title {
  margin-left: 1.75rem;
  font-size: 3.5rem; /* Adjust the font size here */
}
</style>

