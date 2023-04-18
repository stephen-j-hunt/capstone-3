package com.techelevator.dao;

import com.techelevator.model.Genre;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcGenreDao implements GenreDao{


    private final JdbcTemplate jdbcTemplate;

    public JdbcGenreDao(DataSource dataSource) {
        this.jdbcTemplate =  new JdbcTemplate(dataSource);
    }

    // returns a list of all genres from the genre table
    @Override
    public List<Genre> getAllGenres() {
        final String sql = "SELECT genre_id, genre_name\n" +
                "FROM genre;\n";

        final SqlRowSet rs = this.jdbcTemplate.queryForRowSet(sql);
        List<Genre> genres = new ArrayList<>();
        while(rs.next()) {
            final Genre genre = mapRowToGenre(rs);
            genres.add(genre);
        }
        return genres;
    }



    private Genre mapRowToGenre(SqlRowSet rs){
        final int genreId = rs.getInt("genre_id");
        final String genreName = rs.getString("genre_name");
        final Genre genre = new Genre(genreId, genreName);
        return genre;
    }



}
