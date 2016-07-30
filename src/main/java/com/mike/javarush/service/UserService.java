package com.mike.javarush.service;

import com.mike.javarush.domain.User;
import java.util.List;

/**
 * Created by Mike on 7/25/2016.
 */
public interface UserService {
    User findById(int id);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUserByID(int id);

    //boolean addUser(User user);

    List<User> findAllUsers(Integer offset, Integer maxResults);

    Long count();

    List<User> findUsersByName(String name);
}
