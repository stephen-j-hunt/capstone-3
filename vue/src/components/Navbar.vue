<template>
  <div id="nav">
    <div class="top-4">
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
    </div>
    <slot class="logout">
      <router-link
        v-bind:to="{ name: 'logout' }"
        v-if="$store.state.token !== ''"
        class="nav-link"
        >Logout</router-link
      >
    </slot>
  </div>
</template>

export default {
  name: "nav-bar"
}

<style scoped>
.top-4 {
  display: flex;
  flex-direction: column;
}
#nav {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  background: rgb(121, 12, 4);
  background: radial-gradient(circle, rgb(121, 12, 4) 5%, rgb(36, 4, 10) 70%);
  font-size: 1.4rem;
}
.nav-link {
  text-decoration: none;
  text-align: center;
  color: inherit;
  padding: 1rem;
}
.nav-link:hover {
  background-color: #f5f5f556;
  /* border-radius: 10px;
  color: gold; */
}
.router-link-exact-active {
  font-weight: bolder;
  background-color: #f5f5f580;
  color: white;
  /* border-radius: 10px;
  border: 2px solid gold; */
}
.logout {
  display: flex;
  justify-content: center;
  text-decoration: none;
  text-align: center;
  color: inherit;
  padding: 0.8rem 0;
}
</style>


