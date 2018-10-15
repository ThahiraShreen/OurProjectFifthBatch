package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDaoImple;
import model.User;
import myutils.MyUtility;

@Controller
public class FirstController {
	private User user=null;
	
	@RequestMapping(value="/sample",method=RequestMethod.POST)
	public String getMe(Model model,User user) {
		System.out.println(MyUtility.getMydataSource());
		this.user=user;
		System.out.println("username:"+user.getUserName());
		System.out.println("password:"+user.getPassword());
		
		User user1=new UserDaoImple().getUser(user.getUserName());
		//System.out.println("username1:"+user1.getUserName());
		 if(user1==null){
			model.addAttribute("somethingStupid",user);
			System.out.println("Login Failed, Try again");
			return "loginPage";
		}else if( user1.getUserName().equals(user.getUserName()) && user1.getPassword().equals(user.getPassword())){
			model.addAttribute("somethingStupid",user1);
			return "adminHome";
		}else {		
			model.addAttribute("somethingStupid",user1);
			System.out.println("Login Failed, Try again");
			return "loginPage";
		}
		
	}
	}

