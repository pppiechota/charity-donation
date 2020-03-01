package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.service.EmailExistsException;
import pl.coderslab.charity.service.UserService;

import javax.validation.Valid;

@Controller
public class LoginController {

    private final UserService userService;

    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String processLogin() {
        return "redirect:/donation";
    }

    @RequestMapping("/logout")
    public String logout() {
        return "redirect:/login?logout";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserAccount(@Valid User user, BindingResult result) {
        User registered = new User();
        if (!result.hasErrors()) {
            registered = createUserAccount(user, result);
        }
        if (registered == null) {
            result.rejectValue("email", "message.regError");
        }
        if (result.hasErrors()) {
            return "register";
        }
        else {
            return "redirect:/login";
        }
    }

    @RequestMapping("/403")
    public String accessDenied() {
        return "403";
    }

    private User createUserAccount(User user, BindingResult result) {
        User registered = null;
        try {
            registered = userService.registerNewUserAccount(user);
        } catch (EmailExistsException e) {
            return null;
        }
        return registered;
    }
}
