package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.repository.RoleRepository;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public String handleHello() {
        return "Hello from service This display from UserService";
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);

    }

    public User findUserByEmailNativeQuery(String email) {
        return this.userRepository.findCustomerUser(email);
    }

    public User findUserById(Long id) {
        return this.userRepository.findById(id).get();
    }

    public void deleteUserById(Long id) {
        this.userRepository.deleteById(id);
    }

    public User updateUser(User user) {
        return this.userRepository.save(user);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

}
