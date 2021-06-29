package kr.ac.kopo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
		
	@RequestMapping("/")
	public String main() {
		return "index";
	}

}

