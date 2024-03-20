package org.simplilearn.controllers;

import org.simplilearn.entities.*;
import org.simplilearn.models.PurchaseDto;
import org.simplilearn.services.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class PurchaseController {

    private PurchaseService purchaseService;

    @Autowired
    public PurchaseController(PurchaseService purchaseService) {
        this.purchaseService = purchaseService;
    }

    @RequestMapping(value = "/makePayment", method = RequestMethod.GET)
    public String makePayment(HttpSession session) {
        // Retrieve cartItems and totalCartValue from session
        // Perform payment processing
        // Create a PurchaseDto with user and cartItems data
        // Save the purchase using purchaseService.savePurchase(purchaseDto)

        // After successful purchase, you can redirect to the payment success page
        return "payment_success";
    }
}
