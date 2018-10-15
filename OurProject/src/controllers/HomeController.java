package controllers;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDaoImple;
import model.Registration;

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
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/popoye", method = RequestMethod.GET)
	public String pingpong() {
		
		return "loginPage";
	}
	@RequestMapping(value = "Registration", method = RequestMethod.GET)
	public String gingpong() {
		
		return "Registration";
	}
	
	@RequestMapping(value = "/adv", method = RequestMethod.GET)
	public String adv() {
		
		return "advert";
	}
	
	@RequestMapping(value = "/chu", method = RequestMethod.GET)
	public String chu() {
		
		return "checkUsers";
	}
	
	@RequestMapping(value = "/chn", method = RequestMethod.GET)
	public String chn() {
		
		return "checkNew";
	}
	
	@RequestMapping(value = "/ticket", method = RequestMethod.GET)
	public String ticket() {
		
		return "ticket";
	}
	
	@RequestMapping(value = "/evsta", method = RequestMethod.GET)
	public String evsta() {
		
		return "eventStatus";
	}
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event() {
		
		return "eventHome";
	}
	
	@RequestMapping(value = "/party", method = RequestMethod.GET)
	public String party() {
		
		return "party";
	}
	
	@RequestMapping(value = "/corporate", method = RequestMethod.GET)
	public String corporate() {
		
		return "corporate";
	}
	
	@RequestMapping(value = "/trade", method = RequestMethod.GET)
	public String trade() {
		
		return "trade";
	
	}
	
	@RequestMapping(value = "/partyVenues", method = RequestMethod.GET)
	public String partyVenues() {
		
		return "partyVenues";
	}
	
	@RequestMapping(value = "/corporateVenues", method = RequestMethod.GET)
	public String corporateVenues() {
		
		return "corporateVenues";
	}
	
	@RequestMapping(value = "/tradeVenues", method = RequestMethod.GET)
	public String tradeVenues() {
		
		return "tradeVenues";
	}
	Registration re=null;
	@RequestMapping(value = "/abh", method = RequestMethod.GET)
	public String add(Model model, Registration reg){
		
		re=reg;
		System.out.println(re.getFname());
		Registration re2= new UserDaoImple().addUser(re);
		System.out.println("user added"+re2.getFname());
		return "eventHome";
		
	}
	
}
