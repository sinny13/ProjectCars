package kr.mr.myapp;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mr.mapper.MemberMapper;
import kr.mr.mapper.MyPageMapper;
import kr.mr.model.CategoryDTO;
import kr.mr.model.MemberDTO;

@Controller
public class MyPageController {

	@Autowired
	private MyPageMapper mypageMapper;
	
	@Autowired
	private MemberMapper memberMapper;

	// 마이페이지 뷰페이지
	@RequestMapping("/myPageList.do")
	public String myPageList(Model model,String mId) {
		
		
		MemberDTO member = memberMapper.memberGetter(mId);		
		model.addAttribute("member", member);

		return "mypage/myPageList";
	}

	// 상세정보 뷰페이지
	@RequestMapping("/myMemberModify.do")
	public String myMemberModify(Model model,String mId) {
		
	
		MemberDTO member = memberMapper.memberGetter(mId);		
		model.addAttribute("member", member);

		return "mypage/myMemberModify";

	}
	
	// 상세정보 수정완료
	@RequestMapping("/myMemberModifyOk.do")
	public String myMemberModifyOk(Model model,MemberDTO member) {
		
		
		
		int n = memberMapper.memberUpdate(member);		
		
		if(n>0) {
			
			model.addAttribute("member", member);
			System.out.println("성공!!");
			return "mypage/myMemberModify";
			
		}else {
			model.addAttribute("member", member);
			System.out.println("실패!!");
			return "mypage/myMemberModify";
		}

		
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
		
	
	  
	  // 인보이스(구매내역)
	  
	  @RequestMapping("/myInvoice.do") public String myInvoice() {
	  
	  return "payment/myInvoice"; }
	 
}