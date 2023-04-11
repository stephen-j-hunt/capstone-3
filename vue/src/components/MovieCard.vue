<template>
  <div class="card">
    <div class="card-image">
      <img v-bind:src="movie.poster" alt="" />
    </div>
  </div>
</template>

<script>
export default {
  props: ["movie", ]
};
</script>

<style scoped>
.card {
  display: flex;
  
 
}
.card-image {
max-height: 100%;
max-width: 100%;
object-fit: contain;


  /* height: 2rem;
  width: 80%; */
}

</style>