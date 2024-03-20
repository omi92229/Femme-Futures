package org.simplilearn.services;

import org.simplilearn.entities.CartItem;
import org.simplilearn.entities.Purchase;
import org.simplilearn.entities.PurchaseItem;
import org.simplilearn.models.PurchaseDto;
import org.simplilearn.repositories.PurchaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PurchaseServiceImpl implements PurchaseService {

    private PurchaseRepository purchaseRepository;

    @Autowired
    public PurchaseServiceImpl(PurchaseRepository purchaseRepository) {
        this.purchaseRepository = purchaseRepository;
    }

    @Override
    public Purchase savePurchase(PurchaseDto purchaseDto) {
        Purchase purchase = new Purchase();
        purchase.setUser(purchaseDto.getUser());
        purchase.setPurchaseDate(new Date());

        List<PurchaseItem> purchaseItems = purchaseDto.getCartItems().stream().map(cartItem -> {
            PurchaseItem purchaseItem = new PurchaseItem();
            purchaseItem.setPurchase(purchase);
            purchaseItem.setProduct(cartItem.getProduct());
            purchaseItem.setQuantity(cartItem.getQuantity());
            purchaseItem.setPrice(cartItem.getPrice());
            return purchaseItem;
        }).collect(Collectors.toList());

        purchase.setPurchaseItems(purchaseItems);

        double totalAmount = purchaseItems.stream().mapToDouble(item -> item.getQuantity() * item.getPrice()).sum();
        purchase.setTotalAmount(totalAmount);

        return purchaseRepository.save(purchase);
    }
}
