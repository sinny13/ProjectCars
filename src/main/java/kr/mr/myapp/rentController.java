package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.CategoryMapper;
import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.ReserveMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.CategoryDTO;
import kr.mr.model.VehicleDTO;


@Controller
public class rentController {
	
	@Autowired
	   private VehicleMapper vehicleMapper;
	
	@Autowired
	private ReserveMapper reserveMapper;
	
	   
	   
	@RequestMapping("/rentalSelector.do") 
	public String rentalSelector(Model model, int cNum) {
		
		
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		return "rental/rental_selector"; 
		
	}  
	
	
	
	
	@RequestMapping("/rentNowPage.do") 
	public String nowCar(Model model) {
		
		List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();	  
		model.addAttribute("vehicleList", vehicleList);
		
		return "rental/rentNowPage"; 
		
	}  
	
	
	   @RequestMapping("/rentDayPage.do") 
	      public String DayCar(Model model) {
	  
	      List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();	  
	      model.addAttribute("vehicleList", vehicleList);
	  
	       return "rental/rentDayPage"; 
	          
	   }  
	   
	   @RequestMapping("/rentLongPage.do") 
	   public String LongDayCar(Model model) {
		   
		   List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();	  
		   model.addAttribute("vehicleList", vehicleList);
		   
		   return "rental/rentLongPage"; 
		   
	   }  
	   

	   
	   

	}