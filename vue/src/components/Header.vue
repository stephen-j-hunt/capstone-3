<template>
  <header>
    <div class="header-container">
      <!-- <router-link to="/" class="logo-link"> -->
        <img src="../assets/logo.png" alt="logo">
      <!-- </router-link> -->
     <div class="title">Movie Elevator</div>
    </div>
  </header>
</template>


<style scoped>
header {
  /* display: flex;
  */
  align-items: center;
  background-color: #d80000;
  border-right: 1px solid #000000 ;
  padding: 0rem;
  height: 135px;
  width: 100%;
  box-sizing: border-box;
  top: 0;
  left:0;
  right: 0;
  position: fixed;
  /* margin-left: 9%; */
}

.header-container {
  display: flex;
  align-items: center;
  height: 100%;
}

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

}


img {
  margin-left: 1rem;
  margin-right: 1rem;
  width: 7%;
}

.title {
  margin-left: 1rem;
  font-size: 2rem; /* Adjust the font size here */
}

</style>

