package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.repository.InstitutionRepository;
import pl.coderslab.charity.service.UserService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin")
//@Secured("ROLE_ADMIN")
public class AdminController {

    private final UserService userService;
    private final InstitutionRepository institutionRepository;

    public AdminController(UserService userService, InstitutionRepository institutionRepository) {
        this.userService = userService;
        this.institutionRepository = institutionRepository;
    }

    @RequestMapping(value = "/dashboard")
    public String adminHome() {
        return "admin/home";
    }

    @RequestMapping(value = "/institutions")
    public String showInstitutions(Model model) {
        List<Institution> institutions = institutionRepository.findAll();
        model.addAttribute("institutions", institutions);
        return "admin/institutions";
    }

    @RequestMapping(value = "/add-new")
    public String addInstitution(Model model) {
        model.addAttribute("institution", new Institution());
        return "admin/add-institution";
    }

    @RequestMapping(value = "/add-new", method = RequestMethod.POST)
    public String saveInstitution(@Valid Institution institution, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/add-institution";
        }
        institutionRepository.save(institution);
        return "redirect:/admin/institutions";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteInstitution(@RequestParam Integer id) {
        if (institutionRepository.existsById((long) id)) {
            institutionRepository.deleteById((long) id);
        }
        return "redirect:/admin/institutions";
    }
}
