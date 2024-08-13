package com.example.restaurant_spring_boot.repository;

import com.example.restaurant_spring_boot.entity.MenuItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MenuItemRepository extends JpaRepository<MenuItem, Integer> {
    List<MenuItem> findByPriceBetween(double min_price, double max_price);
    List<MenuItem> findByDiscountTrue();
}
