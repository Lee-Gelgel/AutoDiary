package calendar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/calendar/calendar")
public class CalendarController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView calendar_get(HttpSession session){
		ModelAndView mav = new ModelAndView();
		String accessToken = (String) session.getAttribute("accessToken");
		System.out.println(accessToken);
		mav.setViewName("/calendar/calendar");
		return mav;
	}
}
