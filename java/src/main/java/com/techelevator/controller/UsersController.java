package com.techelevator.controller;

import com.techelevator.dao.UserDao;
import com.techelevator.model.Genre;
import com.techelevator.model.Preferences;
import com.techelevator.model.User;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin
@RestController
public class UsersController {

    private final UserDao userDao;

    public UsersController(UserDao userDao) {
        this.userDao = userDao;
    }

    @GetMapping("/users")
    public List<User> findAll() {return this.userDao.findAll();}

    @GetMapping("/users/{id}")
    public User getUserById(@PathVariable int id){
        return this.userDao.getUserById(id);
    }

    @GetMapping("/users/{id}/preferences")
    public Preferences getUserPrefs(@PathVariable int id) {
        Preferences preference = new Preferences();
        preference.setGenres(this.userDao.getUserPrefs(id));
        return preference;
    }

    @DeleteMapping("/users/{id}/preferences/{genreId}")
    public void clearUserPrefs(@PathVariable(name="id") int userId, @PathVariable int genreId) {
        this.userDao.clearUserPrefs(userId, genreId);
    }

    @PutMapping("/users/{id}/preferences")
    public void addUserPreferences(@PathVariable int userId, @RequestBody Preferences preferences) {
        User user = userDao.getUserById(userId);
        userDao.addUserPreferences(user.getId(), preferences);
        user.setPreferences(preferences);
    }
}
