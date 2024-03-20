package org.simplilearn.services;

import org.simplilearn.entities.Purchase;
import org.simplilearn.models.PurchaseDto;

public interface PurchaseService {
    Purchase savePurchase(PurchaseDto purchaseDto);
}
