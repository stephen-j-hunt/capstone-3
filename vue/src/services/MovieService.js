import axios from 'axios';

export default {
  // getUsername() {
  //   return axios.get('/users');
  // },

  getAll() {
    return axios.get('/movies');
  },
  getAllGenres() {
    return axios.get('/genres');
  },

  getGenreByUserId(id) {
    return axios.get(`/genres/${id}`);
  },

  addGenreToPref(userGenreDto) {
    return axios.post(`/genres`, userGenreDto);
  }


}
