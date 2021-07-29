package com.retry.SpringProject;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		List<String> a = new ArrayList<String>();
		List<String> b0 = new ArrayList<String>();
		List<String> b1 = new ArrayList<String>();
		List<String> b2 = new ArrayList<String>();
		List<Map<String,Object>> b3 = new ArrayList<Map<String,Object>>();
		a.add("a");
		a.add("a");
		a.add("a");
		a.add("a");

		b0.add("0번b");
		b0.add("0번b");
		b1.add("1번b");
		b1.add("1번b");
		b2.add("2번b");
		b2.add("2번b");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("value", "실험값");
		map.put("value2", "실험값");
		b3.add(map);
		model.addAttribute("a", a );
		model.addAttribute("b0", b0 );
		model.addAttribute("b1", b1 );
		model.addAttribute("b2", b2 );
		model.addAttribute("b3", b3 );
		
		return "home";
	}
	@RequestMapping(value = "/ss", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
