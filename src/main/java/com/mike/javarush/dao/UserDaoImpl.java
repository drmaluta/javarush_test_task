package com.mike.javarush.dao;

import com.mike.javarush.domain.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Mike on 7/25/2016.
 */
@Repository("userDao")
@Transactional
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

    public User findById(int id) {
        return getByKey(id);
    }

    public void saveUser(User user) {
        persist(user);
    }

    public void deleteUserByID(int id) {
        delete(findById(id));
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public List<User> findAllUsers(Integer offset, Integer maxResults) {
        Criteria criteria = createEntityCriteria();
        criteria.setFirstResult(offset != null ? offset:0);
        criteria.setMaxResults(maxResults != null ? maxResults : 10);
        return (List<User>) criteria.list();
    }

    public Long count(){
        Criteria criteria = createEntityCriteria();
        criteria.setProjection(Projections.rowCount());
        return (Long) criteria.uniqueResult();
    }

    @SuppressWarnings("unchecked")
    public List<User> findUsersByName(String name) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.like("name", name));
        return (List) criteria.list();
    }


}
