package pl.coderslab.charity.service;

import pl.coderslab.charity.entity.User;

public interface UserService {
    User findByUserName(String name);
    User findByEmail(String email);
//    void saveUser(User user);
    User registerNewUserAccount(User user) throws EmailExistsException;
}
