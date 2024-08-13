package com.example.restaurant_spring_boot.service;

import com.example.restaurant_spring_boot.entity.MenuItem;
import com.example.restaurant_spring_boot.repository.MenuItemRepository;
import org.springframework.stereotype.Service;


import javax.transaction.Transactional;
import java.util.List;

@Service
public class MenuItemService {
    MenuItemRepository menuItemRepository;

    public MenuItemService(MenuItemRepository menuItemRepository) {
        this.menuItemRepository = menuItemRepository;
    }

    @Transactional
    public MenuItem addMenuItem(MenuItem menuItem){
           return menuItemRepository.save(menuItem);
    }
    @Transactional
    public List<MenuItem> addMultipleMenuItems(List<MenuItem> menuItems) {
        return menuItemRepository.saveAll(menuItems);
    }
    @Transactional
    public List<MenuItem> getMenuItemsByPriceRange(Double minPrice, Double maxPrice) {
        return menuItemRepository.findByPriceBetween(minPrice, maxPrice);
    }
    @Transactional
    public List<MenuItem> getMenuItemsWithDiscount() {
        return menuItemRepository.findByDiscountTrue();
    }
    @Transactional
    public List<MenuItem> getAllMenuItems(){
        return menuItemRepository.findAll();
    }
    @Transactional
    public void deleteMenuItemById(Integer id) {
        menuItemRepository.deleteById(id);
    }
}
