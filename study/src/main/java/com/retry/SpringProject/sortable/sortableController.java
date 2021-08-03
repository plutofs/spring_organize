package com.retry.SpringProject.sortable;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.retry.SpringProject.sortable.service.sortableService;


@Controller
public class sortableController {
	
	@Resource(name="sortableService") 
	private sortableService Service;
	
	@RequestMapping(value = "/sortable", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
	
		return "/sortable/sortableMain";
	}

	
}
