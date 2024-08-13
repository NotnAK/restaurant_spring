package com.example.restaurant_spring_boot.entity;

import javax.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "menu")
public class MenuItem {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Integer id;
    @Column(name = "dish_name")
    private String name;
    private Double price;
    private Double weight;
    private Boolean discount;

}