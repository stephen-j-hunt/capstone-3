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
    
    @PutMapping("/users/{userId}/preferences")
    public void addUserPreferences(@PathVariable int userId, @RequestBody List<Integer> preferences) {
        userDao.addUserPreferences(userId, preferences);
    }
}
