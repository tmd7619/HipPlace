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
	
	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String main()
	 * { return "index";
	 * 
	 * }
	 */
	//플레이스 목록 조회
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String searchPlaceList(Model model) {
		return "place/hipplaceList";
	}

	//플레이스 목록 조회
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String searchPlace(Model model) {
		return "place/detail";
	}

	//플레이스 등록
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String registerPlace(Model model) {
		return "place/registerHipplace";
	}

}
