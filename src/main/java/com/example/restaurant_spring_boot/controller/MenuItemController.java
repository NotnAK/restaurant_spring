package com.example.restaurant_spring_boot.controller;

import com.example.restaurant_spring_boot.entity.MenuItem;
import com.example.restaurant_spring_boot.service.MenuItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuItemController {
    MenuItemService menuItemService;

    public MenuItemController(MenuItemService menuItemService) {
        this.menuItemService = menuItemService;
    }

    @GetMapping()
    public String getAllMenuItems(Model model) {
        List<MenuItem> menuItems = menuItemService.getAllMenuItems();
        model.addAttribute("menuItems", menuItems);
        return "menu";
    }
    @GetMapping("/add_menuItem")
    public String showMenuAddPage(){
        return "addMenuItem";
    }
    @PostMapping("/add")
    public String addMenuItem(@RequestParam String name,
                              @RequestParam Double price,
                              @RequestParam Double weight,
                              @RequestParam(required = false) Boolean discount) {
        MenuItem menuItem = new MenuItem();
        menuItem.setName(name);
        menuItem.setPrice(price);
        menuItem.setWeight(weight);
        menuItem.setDiscount(discount != null ? discount : false);
        menuItemService.addMenuItem(menuItem);
        return "redirect:/menu";
    }
    @PostMapping("/delete")
    public String deleteMenuItem(@RequestParam Integer id) {
        menuItemService.deleteMenuItemById(id);
        return "redirect:/menu";
    }
    @GetMapping("/price_range_page")
    public String showPriceRangePage(){
        return "priceRangePage";
    }
    @GetMapping("/price_range")
    public String getMenuItemsByPriceRange(@RequestParam Double minPrice,
                                           @RequestParam Double maxPrice,
                                           Model model) {
        List<MenuItem> menuItems = menuItemService.getMenuItemsByPriceRange(minPrice, maxPrice);
        model.addAttribute("menuItems", menuItems);
        return "priceRangePage";
    }
    @GetMapping("/discount")
    public String getMenuItemsWithDiscount(Model model) {
        List<MenuItem> menuItems = menuItemService.getMenuItemsWithDiscount();
        model.addAttribute("menuItems", menuItems);
        return "discountedItems";
    }
}
