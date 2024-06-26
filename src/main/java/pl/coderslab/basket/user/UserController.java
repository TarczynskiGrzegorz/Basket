package pl.coderslab.basket.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.basket.user.User;
import pl.coderslab.basket.user.UserService;

import javax.validation.Valid;

@Controller
public class UserController {

    private final UserService userService;
    private final UserRepository userRepository;

    public UserController(UserService userService, UserRepository userRepository) {

        this.userService = userService;
        this.userRepository = userRepository;
    }

    @GetMapping("/registry")
//    @ResponseBody
    public String showForm(Model model) {
//        User user = new User();
//        user.setUsername("Grzegorz");
//        user.setPassword("Grzegorz");
//        userService.saveUser(user);
//        return "Grzegorz";
        model.addAttribute("user", new User());
        return "user/registry";
    }

    @PostMapping("/registry")
    public String createUser(@Valid User user, BindingResult result, Model model) {
        if (userRepository.findByUsername(user.getUsername()) != null) {
            result.addError(new FieldError("user","username","This user exists"));
//            model.addAttribute("exists",true);
            return "user/registry";
        }
        userService.saveUser(user);
        return "redirect:login";
    }

    @GetMapping("/login")
    public String loginUser() {
        return "/user/login";
    }


}