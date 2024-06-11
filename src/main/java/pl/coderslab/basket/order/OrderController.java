package pl.coderslab.basket.order;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.basket.user.UserRepository;

@Controller
public class OrderController {
//    private final OrderRepository orderRepository;
//    private final UserRepository userRepository;
//
//    public OrderController(OrderRepository orderRepository, UserRepository userRepository) {
//        this.orderRepository = orderRepository;
//        this.userRepository = userRepository;
//    }

//    @GetMapping("/dashboard")
//    public String displayOrder(@AuthenticationPrincipal UserDetails user, Model model) {
////        Order order = orderRepository.findOrderByUser(userRepository.findByUsername(user.getUsername()));
////        model.addAttribute("order", order);
//        return "/dashboard";
//    }

//    @GetMapping("/order/create")
//    public String create(Model model, @AuthenticationPrincipal UserDetails user) {
//        Order order = new Order();
//        order.setUser(userRepository.findByUsername(user.getUsername()));
//        orderRepository.save(order);
//        model.addAttribute("order", order);
//        return "/dashboard";
//    }
//
//    @GetMapping("/order/addDish")
//    public String showForm(Model model, @AuthenticationPrincipal UserDetails user){
//        Order order= new Order();
//        model.addAttribute("order", order);
//        return "/order/form";
//    }




}
