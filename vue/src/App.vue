<template>
  <div id="app">
    <header>
      <img src="" alt="logo">
      <h1> Movie Elevators</h1>

      </header>
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token === ''">Login</router-link>
       <router-link v-bind:to="{ name: 'my-account' }" v-if="$store.state.token == ''">My Account</router-link>
        <router-link v-bind:to="{ name: 'my-movies' }" v-if="$store.state.token == ''">My Movies</router-link>
        <router-link v-bind:to="{ name: 'browse-movies' }" v-if="$store.state.token == ''">Browse Movies</router-link>
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token !== ''">Logout</router-link>
    </div>
    <router-view/>
  </div>
</template>

<style scoped>
  
 

#app {
    display: flex;
    min-height: 100vh;
  }
  
  #nav {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: stretch;
    background-color: #f8f9fa;
    border-right: 1px solid #dee2e6;
    padding: 1rem;
    min-height: 100%;
    width: 200px;
  }
  
  .router-link-exact-active {
    font-weight: bold;
  }
  
  .router-link {
    text-decoration: none;
    color: inherit;
    padding: 0.5rem 0;
    display: block;
  }
  
  .router-link:hover {
    background-color: #e9ecef;
    color: #495057;
  }


</style>
