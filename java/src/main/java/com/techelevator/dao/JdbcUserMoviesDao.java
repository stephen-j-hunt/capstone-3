package com.techelevator.dao;

import com.techelevator.controller.UserMovies;
import com.techelevator.model.Movie;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcUserMoviesDao implements UserMoviesDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcUserMoviesDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }


    @Override
    public void setUserMovies(UserMovies userMovies) {
        String sql = "SELECT * FROM user_movies WHERE userId = ?;";

        boolean updateWatchlist = userMovies.isWatchlist() != null;
        boolean updateFavorites = userMovies.isFavorite() != null;

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userMovies.getUserId());
        if(results.next()) {
            if(updateWatchlist) {
                String sqlUpdate = "UPDATE user_movies SET(watchlist) VALUES(?) WHERE user_id =? AND movie_id =?;";
                jdbcTemplate.update(sqlUpdate, userMovies.isWatchlist(), userMovies.getUserId(), userMovies.getMovieId());
            }
            if(updateFavorites) {
                String sqlUpdate2 = "UPDATE user_movies SET(favorite) VALUES(?) WHERE user_id =? AND movie_id =?;";
                jdbcTemplate.update(sqlUpdate2, userMovies.isFavorite(), userMovies.getUserId(), userMovies.getMovieId());
            }
        }
        if(updateWatchlist) {
            String sql2 = "INSERT into user_movies(user_id, movie_id, watchlist) VALUES(?, ?, ?);";
            jdbcTemplate.update(sql2, userMovies.getUserId(), userMovies.getMovieId(), userMovies.isWatchlist());
        }
        if(updateFavorites) {
            String sql3 = "INSERT into user_movies(user_id, movie_id, favorite) VALUES(?, ?, ?);";
            jdbcTemplate.update(sql3, userMovies.getUserId(), userMovies.getMovieId(), userMovies.isFavorite());
        }

    }

    @Override
    public List<Movie> getFavoriteMovies(int userId) {
        String sql = "SELECT * FROM movies JOIN user_movies ON movie.id = user_movies.movie_id WHERE user_movies.user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        List<Movie> favoriteMovies = new ArrayList<>();
        while (results.next()) {
            final Movie movie = JdbcMovieDao.mapRowToMovie(results);
            favoriteMovies.add(movie);
        }

        return favoriteMovies;
    }

    @Override
    public List<Movie> getWatchlist(int userId) {
        String sql = "SELECT * FROM movies JOIN user_movies ON movie.id = user_movies.movie_id WHERE user_movies.user_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        List<Movie> watchlist = new ArrayList<>();
        while (results.next()) {
            final Movie movie = JdbcMovieDao.mapRowToMovie(results);
            watchlist.add(movie);
        }

        return watchlist;

    }
}
