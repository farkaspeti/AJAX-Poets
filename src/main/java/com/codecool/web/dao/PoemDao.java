package com.codecool.web.dao;

import com.codecool.web.model.Poem;

import java.sql.SQLException;
import java.util.List;

public interface PoemDao {

    Poem findByPoemId(int poemId) throws SQLException;

    List<Poem> findAllByUserId(int userId) throws SQLException;
}
