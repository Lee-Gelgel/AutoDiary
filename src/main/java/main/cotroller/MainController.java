package main.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/main/main")
public class MainController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView main_get(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/main");
		return mav;
	}
}
