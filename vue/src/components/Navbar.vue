<template>
  <div id="nav">
    <!-- your router-links go here -->
    <router-link
      v-bind:to="{ name: 'home' }"
      class="nav-link"
      v-if="$store.state.token === ''"
      >Home</router-link
    >
    <router-link
      v-bind:to="{ name: 'login' }"
      v-if="$store.state.token === ''"
      class="nav-link"
      >Login</router-link
    >
    <router-link
      v-bind:to="{ name: 'my-account' }"
      v-if="$store.state.token !== ''"
      class="nav-link"
      >My Account</router-link
    >
    <router-link
      v-bind:to="{ name: 'my-movies' }"
      v-if="$store.state.token !== ''"
      class="nav-link"
      >My Movies</router-link
    >
    <router-link
      v-bind:to="{ name: 'recommended-movies' }"
      v-if="$store.state.token !== ''"
      class="nav-link"
      >Recommended Movies</router-link
    >
    <router-link
      v-bind:to="{ name: 'all-movies' }"
      v-if="$store.state.token !== ''"
      class="nav-link"
      >All Movies</router-link
    >
    <!-- <div class="logout"> -->
    <router-link
      v-bind:to="{ name: 'logout' }"
      v-if="$store.state.token !== ''"
      class="nav-link"
      >Logout</router-link
    >
    <!-- </div> -->
  </div>
</template>

export default {
  name: "nav-bar"
}

<style scoped>
#nav {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  /* align-items: stretch; */
  background: rgb(121, 12, 4);
  background: radial-gradient(circle, rgb(199, 7, 42) 5%, rgb(36, 4, 10) 70%);
  /* background-color: #d80000; */
  /* background-color: rgb(0, 0, 0); */
  font-size: 1.4rem;
}
.nav-link {
  text-decoration: none;
  text-align: center;
  color: inherit;
  padding: 0.8rem 0;
  /* display: block; */
}

.nav-link:hover {
  background-color: #f5f5f580;

  border-radius: 30px;
  color: gold;
}

.router-link-exact-active {
  font-weight: bolder;
  color: white; /* active link color */
  border-radius: 30px;
  border: 2px solid gold;
}
/* .logout {
  margin-top: 500px;
  text-align: center;
} */
</style>

