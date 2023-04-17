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



}
