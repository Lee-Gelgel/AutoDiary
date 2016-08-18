package sign.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/sign/signOut")
public class SignOutController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView signOut_get(HttpSession session){
		ModelAndView mav = new ModelAndView();
		session.removeAttribute("accessToken");
		mav.setViewName("redirect:/intro/intro");
		return mav;
	}
}
