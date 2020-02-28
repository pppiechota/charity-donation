package pl.coderslab.charity.service;

import pl.coderslab.charity.entity.User;

public interface UserService {
    User findByUserName(String name);
    void saveUser(User user);
}
