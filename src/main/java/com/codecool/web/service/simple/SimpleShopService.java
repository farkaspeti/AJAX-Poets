package com.codecool.web.service.simple;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.service.ShopService;
import com.codecool.web.service.exception.ServiceException;

import java.sql.SQLException;
import java.util.List;

public final class SimpleShopService implements ShopService {

    private final PoemDao poemDao;

    public SimpleShopService(PoemDao poemDao) {
        this.poemDao = poemDao;
    }

    @Override
    public List<Shop> getShops() throws SQLException {
        return poemDao.findAll();
    }

    @Override
    public Shop getShop(String id) throws SQLException, ServiceException {
        try {
            Shop shop = poemDao.findById(Integer.parseInt(id));
            if (shop == null) {
                throw new ServiceException("Unknown shop");
            }
            return shop;
        } catch (NumberFormatException ex) {
            throw new ServiceException("Shop id must be an integer");
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
    }

    @Override
    public Shop addShop(String name) throws SQLException, ServiceException {
        try {
            return poemDao.add(name);
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
    }
}
