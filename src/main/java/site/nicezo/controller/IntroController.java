package site.nicezo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro")
public class IntroController {
	@RequestMapping("/intro")
	public String intro() {
		return "intro/intro";
	}
	
	@RequestMapping("/ceo")
	public String ceo() {
		return "intro/ceo";
	}
	
	@RequestMapping("/map")
	public String map() {
		return "intro/map";
	}
	
	@RequestMapping("/map/{num}")
	public String mapDetail(@PathVariable int num) {
		return "intro/map/"+num;
	}
	
	@RequestMapping("/info")
	public String info() {
		return "intro/info";
	}
	
	@RequestMapping("pay_info")
	public String payInfo() {
		return "intro/pay_info";
	}
	
	@RequestMapping("join_info")
	public String joinInfo() {
		return "intro/join_info";
	}
}
