package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DonationController {

    @RequestMapping("/donation")
    public String formAction(Model model) {
        return "form";
    }

    @RequestMapping(value = "/donation",method = RequestMethod.POST)
    public String confirmationAction(){
        return "form-confirmation";
    }
}
