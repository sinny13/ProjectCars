package kr.mr.myapp;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.ReserveMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.MemberDTO;
import kr.mr.model.ReserveDTO;
import kr.mr.model.VehicleDTO;

@Controller
public class RevController {


	@Autowired
	private ReserveMapper reserveMapper;
	
	@Autowired
	private VehicleMapper vehicleMapper;
	
	@Autowired
	private MemberMapper memberMapper;

	// 즉시예약 페이지 전환
	@RequestMapping("/nowRev.do")
	public String reserveNow(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		
		return "reserve/NowReserve";
		
	}
	
	// 1일 예약 페이지 전환
	@RequestMapping("/oneDayRev.do")
	public String reserveOneDay(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		
		return "reserve/DayReserve";

	}

	// 장기 예약 페이지 전환
	@RequestMapping("/longDayRev.do")
	public String reserveLongDay(Model model , int cNum) {
		
		VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
		
		model.addAttribute("vDto", vDto);
		
		
		return "reserve/LongReserve";

	}



	// 예약정보 입력 -> 결제
	   @RequestMapping("/onedaypayment.do")
	   public String onedayreserveInsert(ReserveDTO dto,int cNum,Model model, HttpSession session, HttpServletRequest request)throws IOException{
	      
	      String datepicker1 = request.getParameter("datepicker1");
	      System.out.println("datepicker1 : " +  datepicker1);
	      
	      
	      Date reDate1 = Date.valueOf(datepicker1);
	      System.out.println("reDate1 : " + reDate1 );
	      
	      
	      dto.setRevDate1(reDate1);
	      
	      
	      
	      int cnt = reserveMapper.reserveInsert(dto);
	      
	      if (cnt > 0) { // 등록성공
	         
	         // 회원정보
	         List<ReserveDTO> revList = reserveMapper.reserveList();      
	         model.addAttribute("revList", revList);
	         
	         // cNum으로 차량 정보 가져오기
	         VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
	         
	         model.addAttribute("vDto", vDto);
	         
	         
	         
	         
	         return "payment/payment";
	         
	         
	         
	         
	      } else {
	         session.setAttribute("1", "1 1!!");
	         return "reserve/myNowReserv";
	         
	      }
	      
	   }
	   
	   // 예약정보 입력 -> 결제
	   @RequestMapping("/longdaypayment.do")
	   public String reserveInsert(ReserveDTO dto,int cNum,Model model, HttpSession session, HttpServletRequest request)throws IOException{
	      
	      String datepicker1 = request.getParameter("datepicker1");
	      System.out.println("datepicker1 : " +  datepicker1);
	      String datepicker2 = request.getParameter("datepicker2");
	      System.out.println("datepicker2 : " +  datepicker2);
	      
	      Date reDate1 = Date.valueOf(datepicker1);
	      System.out.println("reDate1 : " + reDate1 );
	      Date reDate2 = Date.valueOf(datepicker2);
	      System.out.println("reDate2 : " + reDate2 );
	      
	      dto.setRevDate1(reDate1);
	      dto.setRevDate2(reDate2);
	      
	      
	      int cnt = reserveMapper.reserveInsert(dto);

	      if (cnt > 0) { // 등록성공

	         // 회원정보
	         List<ReserveDTO> revList = reserveMapper.reserveList();      
	         model.addAttribute("revList", revList);
	         
	         // cNum으로 차량 정보 가져오기
	         VehicleDTO vDto = vehicleMapper.vehicleGetter(cNum);
	         
	         model.addAttribute("vDto", vDto);
	         
	         
	         
	         
	         return "payment/payment";

	         
	         
	         
	      } else {
	         session.setAttribute("1", "1 1!!");
	         return "reserve/myNowReserv";

	      }

	   }
	
	
	
	   @RequestMapping("/paymentOk.do") 
	   public String paymentOk(VehicleDTO vDto, MemberDTO mDto, String id, Model model,int cNum) {
		   
		   
		   

		   
		   
		   int cnt = vehicleMapper.vehicleStatusY(cNum);
		   
		   if(cnt>0) {
			   
		   		
			   System.out.println("id :"+id);
			   System.out.println("cNum :"+cNum);
			   
			   mDto.setId(id);   
			   mDto.setcNum(cNum);   
			   
			   memberMapper.insertById(mDto);
			   
			   
			   System.out.println("상태업데이트 성공!");

		   }else {
			   System.out.println("상태업데이트 실패!");

		   }
		   
		   

		   // 차량정보 넣기
		   
		   
		   
		   
			vehicleMapper.vehicleGetter(cNum);
			model.addAttribute("vDto", vDto);
			
			
			
			
			System.out.println("status : "+vDto.getStatus());
		   
		   return "payment/paymentOk"; 
		   
	   }  
	   	   
	   
	
	

}
