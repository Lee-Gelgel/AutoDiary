package map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import map.model.MapDTO;

@Controller
@RequestMapping(value="/map/map")
public class MapController {

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView map_get(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("map/map");
		return mav;
	}
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView map_post(MapDTO map){
		ModelAndView mav = new ModelAndView();
		System.out.println(map);
		mav.addObject("map", map);
		mav.setViewName("map/map2");
		return mav;
	}
	
}
