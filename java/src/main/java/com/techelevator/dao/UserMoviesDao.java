package com.techelevator.dao;

import com.techelevator.model.UserMovie;
import com.techelevator.model.Movie;

import java.util.List;

public interface UserMoviesDao {

//    void setUserMovies(UserMovie userMovie);
    List<Movie> getFavoriteMovies(int userId);
    List<Movie> getWatchlist(int userId);
    void addFavoriteForUser(int userId, int movieId);
    void removeFavoriteForUser(int userId, int movieId);
}
