package com.kdh.controller.peoplecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		public String add() {
			return "peop.all.add";
		}
		
		 @PostMapping("add")
		    public String add(@ModelAttribute People pe) {
			psv.insertThem(pe);		 
		        return "redirect:list";
		    }
		}