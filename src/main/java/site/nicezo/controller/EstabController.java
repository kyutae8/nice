package site.nicezo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/estab")
public class EstabController {
	@RequestMapping("/intro")
	public String intro() {
		return "estab/intro";
	}
	
	@RequestMapping("/front_lobby")
	public String frontLobby() {
		return "estab/front_lobby";
	}
	
	@RequestMapping("/locker_sauna")
	public String lockerSauna() {
		return "estab/locker_sauna";
	}
	
	@RequestMapping("/golfshop")
	public String golfshop() {
		return "estab/golfshop";
	}
	
	@RequestMapping("/restaurant")
	public String restaurant() {
		return "estab/restaurant";
	}
	
	@RequestMapping("/banquetroom")
	public String banquetroom() {
		return "estab/banquetroom";
	}
	
	@RequestMapping("/viproom")
	public String viproom() {
		return "estab/viproom";
	}
	
	@RequestMapping("/start_house")
	public String startHouse() {
		return "estab/start_house";
	}
	
	@RequestMapping("/teehouse")
	public String teehouse() {
		return "estab/teehouse";
	}
	@RequestMapping("/reqist")
	public String reqist() {
		return "estab/reqist";
	}
}
