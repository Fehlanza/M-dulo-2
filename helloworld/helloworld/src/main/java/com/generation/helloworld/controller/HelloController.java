package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Hello-world")
public class HelloController {

	@GetMapping
	public String hellororld() {
		return "Hello world!";
	}
}
