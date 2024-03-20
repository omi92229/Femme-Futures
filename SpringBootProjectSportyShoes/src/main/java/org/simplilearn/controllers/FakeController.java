package org.simplilearn.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FakeController {

    @RequestMapping(value = "/fakeSubmit", method = RequestMethod.POST)
    public String fakeSubmit(@RequestParam String name,
                             @RequestParam String address,
                             @RequestParam String phone,
                             @RequestParam String cardNumber,
                             HttpServletRequest request) {
        // You can do something with the data if needed (e.g., logging), but for this example, we'll just forward.
        request.setAttribute("name", name);
        request.setAttribute("address", address);
        request.setAttribute("phone", phone);
        request.setAttribute("cardNumber", cardNumber);

        // Forward to checkout_success.jsp
        return "forward:/WEB-INF/jsps/fakeSubmit.jsp";
    }

}
