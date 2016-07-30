package com.mike.javarush.service;

import com.mike.javarush.dao.UserDao;
import com.mike.javarush.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Mike on 7/25/2016.
 */

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao dao;

    public User findById(int id) {
        return dao.findById(id);
    }

    public void saveUser(User user) {
        dao.saveUser(user);
    }

    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if (entity != null){
            entity.setName(user.getName());
            entity.setAge(user.getAge());
            entity.setAdmin(user.getAdmin());
        }
    }

    public void deleteUserByID(int id) {
        dao.deleteUserByID(id);
    }

    /*public boolean addUser(User user) {
        return dao.userExists(user.getName());
    }*/


    public List<User> findAllUsers(Integer offset, Integer maxResults) {
        return dao.findAllUsers(offset, maxResults);
    }

    public Long count() {
        return dao.count();
    }


    public List<User> findUsersByName(String name) {
        return dao.findUsersByName(name);
    }
}
