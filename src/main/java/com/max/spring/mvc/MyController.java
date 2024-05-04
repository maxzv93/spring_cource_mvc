package com.max.spring.mvc;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmplayeeDetails(Model model) {

//        Employee employee = new Employee();
//        employee.setName("Ivan");
//        employee.setSurname("Petrov");
//        employee.setSalary(400);

        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }

    @RequestMapping("/showDetails")
    public String showEmpDetailsView(@ModelAttribute("employee") Employee employee) {
        String name = employee.getName();
        employee.setName("Mr" + name);

        String surname = employee.getSurname();
        employee.setSurname("N " + surname);

        Integer salary = employee.getSalary();
        employee.setSalary(salary * 10);

        return "show-emp-details-view";
    }

    //
//
//    @RequestMapping("/showDetails")
//    public String showEmpDetailsView(){
//        return "show-emp-details-view";
//    }
//    @RequestMapping("/showDetails")
//    public String showEmpDetailsView(HttpServletRequest request, Model model) {
//
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - udemi instructor");
//        return "show-emp-details-view";
//    }
}
