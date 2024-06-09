package pl.coderslab.basket.unit;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UnitRepository extends JpaRepository<Unit,Long> {
    @Query("select u from Unit u")
    public List<Unit> findUnits();
}
