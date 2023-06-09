package com.kdh.controller.peoplecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kdh.entity.People;
import com.kdh.service.PeopleService;

@Controller
@RequestMapping("/peop/all/")
public class PeopleController {

		@Autowired
		private PeopleService psv;
		
		@RequestMapping("list")
		public String list(Model model) {
			List<People> list = psv.findAll();
			model.addAttribute("List",list);
			return "peop.all.list";
		}
		
		@GetMapping("add")
		public String add(Model model) {
			 int num = psv.getNum() + 1;
			 model.addAttribute("NUM", num);
			return "peop.all.add";
		}
		
		@PostMapping("add")
		    public String add(@ModelAttribute People pe) {			
			 psv.insertThem(pe);		 
		        return "redirect:list";
		    }
		@RequestMapping("detail")
		public String detail(@RequestParam("num") int num, Model model) {
		    People people = psv.findByNum(num);
		    model.addAttribute("People", people);
		    return "peop.all.detail";
		}
		  @GetMapping("update")
		    public String update(@RequestParam("num") int num, Model model) {
		        People people = psv.findByNum(num);
		        model.addAttribute("People", people);
		        return "peop.all.update";
		    }

		    @PostMapping("update")
		    public String update(@ModelAttribute People updatedPeople) {
		        psv.updatePeople(updatedPeople);
		        return "redirect:list";
		    }

	}