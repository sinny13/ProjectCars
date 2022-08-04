package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.MyPageMapper;
import kr.mr.model.CategoryDTO;

@Controller
public class MyPageController {

	@Autowired
	private MyPageMapper mypageMapper;

	// 마이페이지 뷰페이지
	@RequestMapping("/myPageList.do")
	public String myPageList() {

		return "mypage/myPageList";
	}

	// 상세정보 뷰페이지
	@RequestMapping("/myMemberModify.do")
	public String myMemberModify() {

		return "mypage/myMemberModify";
	}

	
	 // 위시리스트 뷰페이지
	  
	 @RequestMapping("/myWishList.do") 
	 public String myWishList() {
	  
		 return "mypage/myWishList"; 
	}
	 

	// 관심목록 상세보기 뷰페이지
	@RequestMapping("/myWishDetail.do")
	public String myWishDetail() {

		return "mypage/myWishDetail";
	}

	// 오시는길 뷰페이지
	@RequestMapping("/myDirection.do")
	public String myDirection() {

		return "mypage/myDirection";
	}

	// 1일 렌트예약 뷰페이지
	@RequestMapping("/myDayReserv.do")
	public String myDayReserv() {

		return "mypage/myDayReserv";
	}
	
	// 장기 렌트예약 뷰페이지
	@RequestMapping("/myLongReserv.do")
	public String myLongReserv() {

		return "mypage/myLongReserv";
	}
	
	// 결제 뷰페이지
	@RequestMapping("/myPayment.do")
	public String myPayment() {

		return "mypage/myPayment";
	}	
	
	// 결제 -> 무통장입금 뷰페이지
	@RequestMapping("/myBankPayment.do")
	public String myBankPayment() {

		return "mypage/myBankPayment";
	}	
	
	
	

}