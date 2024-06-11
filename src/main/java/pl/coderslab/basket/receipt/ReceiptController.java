package pl.coderslab.basket.receipt;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.basket.user.UserRepository;
@Controller
public class ReceiptController {
    private final ReceiptRepository receiptRepository;
    private final UserRepository userRepository;

    public ReceiptController(ReceiptRepository receiptRepository, UserRepository userRepository) {
        this.receiptRepository = receiptRepository;
        this.userRepository = userRepository;
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
}
