package kr.mr.mapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.model.VehicleDTO;



@Controller
public class RentController {
   
   @Autowired
   private VehicleMapper vehicleMapper;
   @Autowired
   private CategoryMapper categoryMapper;
   
   
   @RequestMapping("/rentPage.do") 
      public String rentPage(Model model) {

       return "rental/rentPage"; 
          
   }  
   
   

}