import axios from 'axios';

export default {

  getAll() {
    return axios.get('/movies');
  },
  getAllGenres() {
    return axios.get('/genres');
  }


}
