<template>
  <div id="nav">
    <!-- your router-links go here -->
     <router-link v-bind:to="{ name: 'home' }" class="nav-link">Home</router-link>
    <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token === ''" class="nav-link">Login</router-link>
    <router-link v-bind:to="{ name: 'my-account' }" v-if="$store.state.token !== ''" class="nav-link">My Account</router-link>
    <router-link v-bind:to="{ name: 'my-movies' }" v-if="$store.state.token !== ''" class="nav-link">My Movies</router-link>
    <router-link v-bind:to="{ name: 'browse-movies' }" v-if="$store.state.token !== ''" class="nav-link">Browse Movies</router-link>
    <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token !== ''" class="nav-link">Logout</router-link>

  </div>
</template>

<style scoped>
#nav {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: stretch;
  background-color: #d80000;
  border-right: 1px solid #000000;
  padding: 1rem;
  min-height: 100%;
  width: 100px;
}

.nav-link {
  text-decoration: none;
  color: inherit;
  padding: 0.5rem 0;
  display: block;
}

.nav-link:hover {
  background-color: #f5f5f580;
  color: #1c1c1d;
}

.router-link-exact-active {
  font-weight: bold;
  color: #000000; /* active link color */
}
</style>

