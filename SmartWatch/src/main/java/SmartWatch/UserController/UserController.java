package SmartWatch.UserController;

import javax.enterprise.inject.New;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import SmartWatch.Entity.Users;
import SmartWatch.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController{
	@Autowired
	AccountServiceImpl accountService =new AccountServiceImpl();
	@RequestMapping(value ="/Signup", method = RequestMethod.GET)
	public ModelAndView Register() {
		
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
		
	}
	
	@RequestMapping(value ="/Signup", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountService.AddAccount(user);
		if(count > 0 ) {
			_mvShare.addObject("status", "Sign up sucessfully");
		}
		else {
			_mvShare.addObject("status", "Sign up failed");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
		
	}
	
	@RequestMapping(value ="/Signin", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		
		user =accountService.CheckAccount(user);
		if(user != null) {
			_mvShare.setViewName("redirect:home");
			session.setAttribute("LoginInfo", user);
		}
		else {
			_mvShare.addObject("statusLogin", "Sign in failed");
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value ="/Logout", method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	
	}
}
