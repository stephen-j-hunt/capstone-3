<template>
  <div>
    <div class="home-movie-preview">
      <img
        src="../assets/the-super-mario-bros-movie-movie-poster-md.jpg"
        alt=""
      />
      <img src="../assets/john-wick-4.jpg" alt="" />
      <img src="../assets/dnd-movie.jpg" alt="" />
      <img src="../assets/air-movie-poster-md.jpg" alt="" />
      <img src="../assets/air-movie-poster-md.jpg" alt="" />
      <img src="../assets/air-movie-poster-md.jpg" alt="" />
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.home-movie-preview {
  border: 3px solid;
  margin-top: 10px;
  padding: 10px;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
}
</style>