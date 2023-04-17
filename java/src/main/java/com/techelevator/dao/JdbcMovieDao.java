package com.techelevator.dao;

import com.techelevator.model.Movie;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


@Component
public class JdbcMovieDao implements MovieDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcMovieDao(DataSource dataSource) {
        this.jdbcTemplate =  new JdbcTemplate(dataSource);
    }

    // returns a list of all Movies in the movie table
    @Override
    public List<Movie> getAll() {
        final String sql = "SELECT id, title, release_date, overview, poster\n" +
                "FROM movies\n" +
                "ORDER BY title, release_date;\n";

        final SqlRowSet rs = this.jdbcTemplate.queryForRowSet(sql);
        List<Movie> movies = new ArrayList<>();
        while (rs.next()) {
            final Movie movie = mapRowToMovie(rs);
            movies.add(movie);
        }

        return movies;
    }

    // returns a movie by its ID
    @Override
    public Movie getMovieById(int id) {
        final String sql = "SELECT id, title, release_date, overview, poster\n" +
                "From movies\n" +
                "Where id = ?;";
        final SqlRowSet rs = jdbcTemplate.queryForRowSet(sql, id);
        if (rs.next()) {
            return mapRowToMovie(rs);
        } else {
            return null;
        }


    }

    // returns a list of movies for a specified genre
    @Override
    public List<Movie> getMoviesByGenreId(int genreId) {
        final String sql = "SELECT * FROM movies\n" +
                "JOIN movie_genre ON movies.id = movie_genre.movie_id\n" +
                "WHERE movie_genre.genre_id = ?;";

        final SqlRowSet rs = this.jdbcTemplate.queryForRowSet(sql, genreId);
        List<Movie> movies = new ArrayList<>();
        while (rs.next()){
            final Movie movie = mapRowToMovie(rs);
            movies.add(movie);
        }
        return movies;
    }


    public static Movie mapRowToMovie(SqlRowSet rs) {
        final int id = rs.getInt("id");
        final String title = rs.getString("title");
        final String overview = rs.getString("overview");
        final String poster = rs.getString("poster");
        LocalDate releaseDate = null;
        if (rs.getDate("release_date") != null) {
            releaseDate = rs.getDate("release_date").toLocalDate();
        }

        final Movie movie = new Movie(id, title, releaseDate, poster, overview);

        return movie;
    }


}
