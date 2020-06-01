package co.grandcircus.Assessment6HotelSearch;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.Assessment6HotelSearch.Entity.Hotel;
import co.grandcircus.Assessment6HotelSearch.dao.HotelRepository;

@Controller
public class HotelListingController {

	@Autowired 	
	private HotelRepository hotelRepo;
	

	@RequestMapping("/")
	public String home(Model model) {
		
	List<Hotel> hotels = hotelRepo.findAll();
    Set<String> cities = new HashSet<String>();
    for(Hotel hotel:hotels) {
    	cities.add(hotel.getCity());	
    }
	model.addAttribute("cities", cities);
	System.out.print(cities);
		return "home";
	}
	
	@RequestMapping("/results")
	public String result(@RequestParam(name = "city") String city , Model model) {
		  List<Hotel>hotels=hotelRepo.findAllByCity(city);
		  
		  model.addAttribute("city", city);
		  model.addAttribute("hotels", hotels);
		  
		return "results";
	}
	
	
	
}
