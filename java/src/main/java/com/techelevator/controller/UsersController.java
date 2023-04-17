package com.techelevator.controller;

import com.techelevator.dao.UserDao;
import com.techelevator.dao.UserMoviesDao;
import com.techelevator.model.Genre;
import com.techelevator.model.Movie;
import com.techelevator.model.Preferences;
import com.techelevator.model.User;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin
@RestController
public class UsersController {

    private final UserDao userDao;
    private final UserMoviesDao userMoviesDao;

    public UsersController(UserDao userDao, UserMoviesDao userMoviesDao) {
        this.userDao = userDao;
        this.userMoviesDao = userMoviesDao;
    }

    //gets a list of all users
    @GetMapping("/users")
    public List<User> findAll() {return this.userDao.findAll();}

    //gets a user by their ID
    @GetMapping("/users/{id}")
    public User getUserById(@PathVariable int id){

        return this.userDao.getUserById(id);
    }

    //adds/saves the user's genre preferences
    @PutMapping("/users/{userId}/preferences")
    public void addUserPreferences(@PathVariable int userId, @RequestBody List<Integer> preferences) {
        userDao.addUserPreferences(userId, preferences);
    }

    //gets a list of favorite movies for a user
    @GetMapping("/users/{id}/favorites")
    public List<Movie> getFavoriteMovies(@PathVariable int id) {
        return this.userMoviesDao.getFavoriteMovies(id);
    }

    //adds a movie to user_favorites table
    @PostMapping("/users/{userId}/favorites")
    public void addFavorite(@PathVariable int userId, @RequestBody Movie movie) {
        userMoviesDao.addFavoriteForUser(userId, movie.getId());
    }

    //deletes a favorite movie from user_favorites for that user
    @DeleteMapping("/users/{userId}/favorites/{movieId}")
    public void deleteFavorite(@PathVariable int userId, @PathVariable int movieId) {
        userMoviesDao.removeFavoriteForUser(userId, movieId);
    }
    
    //gets a list of user's watchlist movies
    @GetMapping("/users/{id}/watchlist")
    public List<Movie> getWatchlist(@PathVariable int id) {
        return this.userMoviesDao.getWatchlist(id);
    }

    //adds a movie to user_watchlist table
    @PostMapping("/users/{userId}/watchlist")
    public void addToWatchlist(@PathVariable int userId, @RequestBody Movie movie) {
        userMoviesDao.addMovieToWatchlistForUser(userId, movie.getId());
    }

    //deletes a favorite movie from user_watchlist for that user
    @DeleteMapping("/users/{userId}/watchlist/{movieId}")
    public void deleteMovieFromWatchlist(@PathVariable int userId, @PathVariable int movieId) {
        userMoviesDao.removeMovieFromWatchlistForUser(userId, movieId);
    }

}
