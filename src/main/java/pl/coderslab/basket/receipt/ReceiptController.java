package pl.coderslab.basket.receipt;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.basket.dish.Dish;
import pl.coderslab.basket.dish.DishRepository;
import pl.coderslab.basket.product.Product;
import pl.coderslab.basket.unit.Unit;
import pl.coderslab.basket.user.User;
import pl.coderslab.basket.user.UserRepository;

import java.util.List;

@Controller
public class ReceiptController {
    private final ReceiptRepository receiptRepository;
    private final UserRepository userRepository;
    private final DishRepository dishRepository;

    public ReceiptController(ReceiptRepository receiptRepository, UserRepository userRepository,DishRepository dishRepository) {
        this.receiptRepository = receiptRepository;
        this.userRepository = userRepository;
        this.dishRepository = dishRepository;
    }

    @GetMapping("/dashboard")
    public String displayOrder(@AuthenticationPrincipal UserDetails user, Model model) {
        Receipt receipt = receiptRepository.findReceiptByUser(userRepository.findByUsername(user.getUsername()));
        model.addAttribute("receipt", receipt);
        return "/dashboard";
    }

    @GetMapping("/receipt/create")
    public String create(Model model, @AuthenticationPrincipal UserDetails user) {
        Receipt receipt = new Receipt();
        receipt.setUser(userRepository.findByUsername(user.getUsername()));
        receiptRepository.save(receipt);
        model.addAttribute("receipt", receipt);
        return "/dashboard";
    }

    @GetMapping("/receipt/addDish")
    public String showForm(Model model, @AuthenticationPrincipal UserDetails user) {
        User userDao = userRepository.findByUsername(user.getUsername());
//        Receipt receipt = receiptRepository.findReceiptByUser(userDao);
//        model.addAttribute("receipt", receipt);
        List<Dish> dishesList = dishRepository.findDishByUser(userDao);
        model.addAttribute("dishesList", dishesList);

        return "/receipt/form";
    }

    @PostMapping("/receipt/addDish")
    public String addDishToReceipt(@RequestParam Long dishId, @AuthenticationPrincipal UserDetails user){
        Receipt originalReceipt = receiptRepository.findReceiptByUser(userRepository.findByUsername(user.getUsername()));
       Dish dish= dishRepository.findById(dishId).get();
        originalReceipt.addDish(dish);
        receiptRepository.save(originalReceipt);
        return "redirect:/receipt/addDish";

    }


}
