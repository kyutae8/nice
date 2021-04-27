package site.nicezo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/")
	public String def() {
		return "main";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
}
