package com.codecool.web.service.simple;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;
import com.codecool.web.service.PoemService;
import com.codecool.web.service.exception.ServiceException;

import java.sql.SQLException;
import java.util.List;

public final class SimplePoemService implements PoemService {
    
    private final PoemDao poemDao;

    public SimplePoemService(PoemDao poemDao) {
        this.poemDao = poemDao;
    }
    
    @Override
    public List<Poem> getPoemsByUserId(String userId) throws SQLException, ServiceException {
        try {
            return poemDao.findAllByUserId(Integer.parseInt(userId));
        } catch (NumberFormatException ex) {
            throw new ServiceException("User id must be an integer");
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
    }
    
    @Override
    public Poem getPoemById(String id) throws SQLException, ServiceException {
        try {
            return poemDao.findByPoemId(Integer.parseInt(id));
        } catch (NumberFormatException ex) {
            throw new ServiceException("Poem id must be an integer");
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
    }
}
