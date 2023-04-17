package com.techelevator.dao;

import com.techelevator.model.UserMovie;
import com.techelevator.model.Movie;

import java.util.List;

public interface UserMoviesDao {

    List<Movie> getFavoriteMovies(int userId);
    List<Movie> getWatchlist(int userId);
    void addFavoriteForUser(int userId, int movieId);
    void removeFavoriteForUser(int userId, int movieId);
    void addMovieToWatchlistForUser(int userId, int movieId);
    void removeMovieFromWatchlistForUser(int userId, int movieId);
}
