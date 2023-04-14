package com.techelevator.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

import com.techelevator.model.Genre;
import com.techelevator.model.Preferences;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.techelevator.model.User;

@Component
public class JdbcUserDao implements UserDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcUserDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int findIdByUsername(String username) {
        if (username == null) throw new IllegalArgumentException("Username cannot be null");

        int userId;
        try {
            userId = jdbcTemplate.queryForObject("select user_id from users where username = ?", int.class, username);
        } catch (EmptyResultDataAccessException e) {
            throw new UsernameNotFoundException("User " + username + " was not found.");
        }

        return userId;
    }

	@Override
	public User getUserById(int userId) {
		String sql = "SELECT * FROM users WHERE user_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
		if (results.next()) {
            User user = mapRowToUser(results);
            String sql2 = "SELECT * FROM user_genre WHERE user_id =?;";
            SqlRowSet rs = jdbcTemplate.queryForRowSet(sql2, userId);

            if (rs.next()) {
                user.getPreferences().getGenres().add(new Genre(rs.getInt("genre_id"), ""));
            }
			return mapRowToUser(results);
		} else {
			return null;
		}
	}

    @Override
    public List<Genre> getUserPrefs(int userId) {
        List<Genre> userPrefs = new ArrayList<>();
        String sql = "SELECT genre.genre_id, genre_name \n" +
                "FROM user_genre \n" +
                "\tJOIN genre ON genre.genre_id = user_genre.genre_id \n" +
                "WHERE user_id=?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while(results.next()){
            Genre genre = new Genre();
            genre.setId(results.getInt("genre_id"));
            genre.setGenreName(results.getString("genre_name"));
            userPrefs.add(genre);
        }
        return userPrefs;
    }



    @Override
    public void clearUserPrefs(int userId, int genreId) {
        String sql = "DELETE FROM user_genre WHERE user_id = ? AND genre_id = ?; ";
        jdbcTemplate.update(sql, userId, genreId);
    }

    @Override
    public void addUserPreferences(int userId, Preferences preferences) {
        String sql1 = "DELETE FROM user_genre WHERE user_id = ?;";
        jdbcTemplate.update(sql1, userId);

        String sql2 = "INSERT INTO user_genre (user_id, genre_id) VALUES(?,?);";
        for(Genre g : preferences.getGenres()) {
            jdbcTemplate.update(sql2, userId, g.getId());
        }
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        String sql = "select * from users";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        while (results.next()) {
            User user = mapRowToUser(results);
            users.add(user);
        }

        return users;
    }

    @Override
    public User findByUsername(String username) {
        if (username == null) throw new IllegalArgumentException("Username cannot be null");

        for (User user : this.findAll()) {
            if (user.getUsername().equalsIgnoreCase(username)) {
                return user;
            }
        }
        throw new UsernameNotFoundException("User " + username + " was not found.");
    }

    @Override
    public boolean create(String username, String password, String role) {
        String insertUserSql = "insert into users (username,password_hash,role) values (?,?,?)";
        String password_hash = new BCryptPasswordEncoder().encode(password);
        String ssRole = role.toUpperCase().startsWith("ROLE_") ? role.toUpperCase() : "ROLE_" + role.toUpperCase();

        return jdbcTemplate.update(insertUserSql, username, password_hash, ssRole) == 1;
    }

    private User mapRowToUser(SqlRowSet rs) {
        User user = new User();
        user.setId(rs.getInt("user_id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password_hash"));
        user.setAuthorities(Objects.requireNonNull(rs.getString("role")));
        user.setActivated(true);
        return user;
    }


}
