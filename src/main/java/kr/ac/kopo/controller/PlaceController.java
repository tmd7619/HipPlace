package kr.ac.kopo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "place")
public class PlaceController {
	private static final Logger logger = LoggerFactory.getLogger(PlaceController.class);
		
	@RequestMapping("/")
	public String main() {
		return "index";
		
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String registerPlace(Model model) {
		System.out.println("??");
		return "place/registerHipplace";
	}

}
