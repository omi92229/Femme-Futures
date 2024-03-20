package org.simplilearn.entities;

public class CartItem {
    private int pid;
    private String name;
    private int quantity;
    private int price;
    private Product product; // Add reference to the Product entity

    public CartItem(int pid, String name, int quantity, int price, Product product) {
        this.pid = pid;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.product = product;
    }

    // Getters and setters for all the fields (pid, name, quantity, price, product)

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
