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

	
	/*
	 * // 위시리스트 뷰페이지
	 * 
	 * @RequestMapping("/myWishList.do") public String myWishList() {
	 * 
	 * return "wish/myWishList"; }
	 */
	 
	// 오시는길 뷰페이지
	@RequestMapping("/myDirection.do")
	public String myDirection() {

		return "mypage/myDirection";
	}
		
	
	/*
	 * @RequestMapping("/myBankPayment.do") public String myBankPayment() {
	 * 
	 * return "payment/myBankPayment"; }
	 * 
	 * 
	 * // 인보이스
	 * 
	 * @RequestMapping("/myInvoice.do") public String myInvoice() {
	 * 
	 * return "payment/myInvoice"; }
	 */
}