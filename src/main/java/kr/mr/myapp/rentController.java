package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.VehicleMapper;
import kr.mr.model.VehicleDTO;


@Controller
public class rentController {
	
	@Autowired
	   private VehicleMapper vehicleMapper;
	   
			 
	   @RequestMapping("/rentNowPage.do") 
	      public String rentNowPage(Model model) {
	  
		   List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();
		   
		   model.addAttribute("vehicleList", vehicleList);
		   
	       return "rental/rentNowPage"; 
	          
	   }  
	   
	   @RequestMapping("/rentDayPage.do") 
	   public String rentDayPage(Model model) {
		   		   
		   List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();
		   
		   model.addAttribute("vehicleList", vehicleList);
		   
		   return "rental/rentDayPage"; 
		   
	   }  
	   
	   @RequestMapping("/rentLongPage.do") 
	   public String rentLongPage(Model model) {
		   
		   List<VehicleDTO> vehicleList = vehicleMapper.vehicleList();
		   
		   model.addAttribute("vehicleList", vehicleList);
		   
		   return "rental/rentLongPage"; 
		   
	   }  

	}