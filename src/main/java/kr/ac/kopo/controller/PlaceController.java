package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class PlaceController {
	
	@RequestMapping("")
	public String main() {
		return "placeList";
		
	}
	
}
