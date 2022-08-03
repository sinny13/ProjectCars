package kr.mr.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.mr.mapper.MemberMapper;
import kr.mr.model.MemberDTO;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired 
	private MemberMapper memberMapper;
	
	@RequestMapping("/memberList.do")
	// HttpServletRequest request 대신 스프링에서는
	// Model 클래스를 이용한다. Model클래스: 객체바인딩 전용 클래스
	public String memberList(Model model) {
//		MemberDAO dao = new MemberDAO();
		List<MemberDTO> list = memberMapper.memberList();
		
		// 객체바인딩
		// request.setAttribute("list", list);
		model.addAttribute("list", list);
		
		return "member/memberList";
	}
	
	
	// 회원가입 뷰로 넘기기
	@RequestMapping("/memberRegister.do")
	public String memberRegister() {
		
	//return "/WEB-INF/views/memberRegister.jsp";
		return "member/memberRegister";
	}
	
	// 로그인 뷰로 넘기기
	@RequestMapping("/memberLogin.do")
	public String loginView() {
		
		//return "/WEB-INF/views/memberRegister.jsp";
		return "member/memberLogin";
	}
	
	
	
	// 회원가입 파라미터 받아서 DTO에저장
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberDTO dto) {
		// 파라미터를 수집해서
		// dto 셋팅해서 인자로 넘겨줘야한다.
		// 이과정을 스프링에서 다처리해준다.
		// DTO를 통해서 자동으로 파라미터를 모아서 만들어준다.
		
		int cnt = memberMapper.memberInsert(dto);
		
		return "redirect:home.do";
	}
	
	
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(int no) {
		
		memberMapper.memberDel(no);
		
		return "redirect:memberList.do";
	}
	
	@RequestMapping("/memberInfo.do")
	public String memberInfo(int no, Model model) {
		
		MemberDTO dto = memberMapper.memberInfo(no);
		
		// 객체바인딩
		model.addAttribute("dto", dto);
		
		return "member/memberInfo";
	}
	
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberDTO dto) {
		int cnt = memberMapper.memberUpdate(dto);
		
		return "redirect:/memberList.do";
	}

	@RequestMapping("/memberLoginOK.do")
	public String loginProcess(MemberDTO dto, HttpSession session){
		String userName = memberMapper.memberLogin(dto);
		String userId =  dto.getId();
		String userPw =  dto.getPw();

		System.out.println("userName : "+userName);
		System.out.println("아이디 : "+userId);
		System.out.println("비밀번호 : "+userPw);
		

		if(userName !=null && !"".equals(userName)){ //로그인성공
			
			if(userId !=null && !"admin".equals(userName)) {
				session.setAttribute("isAccount", "admin"); //관리자계정일때 (계정구분)
				System.out.println("관리자계정 : YES");
			}
			
			session.setAttribute("isLogin", "yes"); //로그인 성공 여부 YES
			session.setAttribute("userId", userId); // id저장
			session.setAttribute("userName", userName); // 이름 저장
			session.setAttribute("isAccount", "client");  // 멤버계정일때 (계정구분)
			
			session.setAttribute("LoginProcess", "로그인성공!"+userName+"님 환영합니다!"); // 로그인 성공-실패 메세지
			
			System.out.println("로그인성공");
			
		}else{ // 로그인 실패
			session.setAttribute("userId", "");
			session.setAttribute("userName", "");
			session.setAttribute("LoginProcess", "로그인에 실패했습니다!"); // 로그인 성공-실패 메세지

			System.out.println("로그인실패");
		}

		return "redirect:/home.do";
	}

	@RequestMapping("/memberLogout.do")
	public String memberLogout(HttpSession session){
		
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		session.removeAttribute("isLogin");
		session.removeAttribute("isAccount");
		session.removeAttribute("LoginProcess");
		
		session.setAttribute("LogoutProcess","정상적으로 로그아웃처리 되었습니다.");
		return "redirect:/home.do";
	}
	
}