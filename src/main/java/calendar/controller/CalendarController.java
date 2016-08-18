package calendar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/calendar/calendar")
public class CalendarController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView calendar_get(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/calendar/calendar");
		return mav;
	}

}
