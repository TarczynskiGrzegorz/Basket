package pl.coderslab.basket.receipt;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.basket.user.User;

public interface ReceiptRepository extends JpaRepository<Receipt,Long> {
    public Receipt findReceiptByUser(User user);
}
