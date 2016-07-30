package com.mike.javarush.dao;

import com.mike.javarush.domain.User;

import java.util.List;

/**
 * Created by Mike on 7/25/2016.
 */
public interface UserDao {
    User findById(int id);

    void saveUser(User user);

    void deleteUserByID(int id);

    List<User> findAllUsers(Integer offset, Integer maxResults);

    Long count();

    List<User> findUsersByName(String name);


}
