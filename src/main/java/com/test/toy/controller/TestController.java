package com.test.toy.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.toy.entity.Item;
import com.test.toy.repository.ItemRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TestController {

	private final ItemRepository repo;
	
	@GetMapping("/list")
	public String list(Model model) {
		
		List<Item> list = repo.findAll();
		
		model.addAttribute("list", list);
		
		return "list";
	}
	
}










