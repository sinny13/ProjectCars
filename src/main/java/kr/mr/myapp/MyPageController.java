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
	
	// 관심목록 상세정보보기 뷰페이지
	@RequestMapping("/myWishList.do")
	public String myWishList() {
		
		return "mypage/myWishList";
	}
	
	// 오시는길 뷰페이지
	@RequestMapping("/myDirection.do")
	public String myDirection() {
		
		return "mypage/myDirection";
	}

	// 오시는길 뷰페이지
	@RequestMapping("/myReservation.do")
	public String myReservation() {
		
		return "mypage/myReservation";
	}
	

}