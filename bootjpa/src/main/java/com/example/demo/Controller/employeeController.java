package com.example.demo.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Model.Employee;
import com.example.demo.Service.EmployeeService;
import com.example.demo.dao.EmployeeLoginRepo;
import com.example.demo.dao.EmployeeRepo;

@Controller
public class employeeController {
	@Autowired
	EmployeeRepo repo;

	@Autowired
	EmployeeLoginRepo reppo;

	@Autowired
	EmployeeService service;

	@RequestMapping("/")
	public String home() {
		return "login_page.jsp";
	}

	@RequestMapping("/addEmployee")
	public String addEmployee(Employee employee) {
		repo.save(employee);
		return "welcomepage.jsp";
	}

	

	@RequestMapping("/getEmployee")
	public ModelAndView getEmployee(@RequestParam int id) {
		ModelAndView mv = new ModelAndView("showEmployee.jsp");
		Employee employee = repo.findById(id).orElse(new Employee());
		mv.addObject(employee);
		return mv;
	}

	@RequestMapping("/updateEmployee")
	public ModelAndView updateEmployee(@RequestParam int id) {
		ModelAndView mv = new ModelAndView("updated.jsp");
		Employee employee = repo.findById(id).orElse(new Employee());
		mv.addObject(employee);
		return mv;
	}

	@RequestMapping("/deleteEmployee")
	public String DeleteEmployee(@RequestParam int id) {
		repo.deleteById(id);
		return "empdeleted.jsp";
	}
	
	@PostMapping("/")
	public String checkPersonInfo(@Valid Employee employee, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "emp_registration.jsp";
		}

		return "redirect:/results";
	}

}
