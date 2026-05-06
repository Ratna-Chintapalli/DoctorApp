
package pack1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //-- return the view/ webpages 
//@RestController--
@RequestMapping("/doctor")
public class DoctorController {

    @Autowired
    private DoctorDAO dao;

    @GetMapping("/index")
    public String home(Model model) {
        model.addAttribute("list", dao.getListOfDoctors());
        return "index";
    }

    @GetMapping("/doctorform")
    public String showForm(Model model) {
        model.addAttribute("doctor", new Doctor());
        return "add_doctor";
    }

    @PostMapping("/save")
    public String addDoctor(@ModelAttribute("doctor") Doctor d) {
        dao.insert(d);
        return "redirect:/doctor/index";
    }

    @GetMapping("/delete/{id}")
    public String deleteDoctor(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/doctor/index";
    }
}
