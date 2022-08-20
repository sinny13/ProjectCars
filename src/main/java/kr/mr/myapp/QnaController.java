package kr.mr.myapp;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.mr.model.QnaPaging;
import kr.mr.model.QnaVO;
import kr.mr.service.QnaService;

@Controller
public class QnaController {
	
	@Autowired
	private QnaService service;
	
	@RequestMapping("/qnaList.do")
	public String list(
			@RequestParam(defaultValue = "1") int viewPage,
			@RequestParam(defaultValue = "5") int cntPerPage,
			
			@ModelAttribute("qvo") QnaVO vo, Model model) {
		
		int totalCnt = service.totalCnt(vo);
		System.out.println(totalCnt);
		
		QnaPaging qp = new QnaPaging(totalCnt, viewPage, cntPerPage);
		
		vo.setStartIndex(qp.getStartIndex());
		vo.setCntPerPage(cntPerPage);
		
		model.addAttribute("qp", qp);
		model.addAttribute("vo", vo);
		
		List<QnaVO> list = service.getList(vo);
		
		model.addAttribute("list", list);
		
		return "qna/qnaList";
	}
	
	@RequestMapping(value="/qnaRegister.do", method=RequestMethod.GET)
	public String registerForm(
			@ModelAttribute("viewPage") int viewPage) {
		return "qna/qnaRegister";
	}
	
	@RequestMapping(value="/qnaRegister.do", method=RequestMethod.POST)
	public String register(QnaVO qna) {
		service.register(qna);
		
		return "redirect:/qnaList.do";
	}
	
	@RequestMapping("/qnaView.do")
	public String view(@ModelAttribute("qvo") QnaVO qvo, int viewPage, Model model) {
		QnaVO qna = service.view(qvo.getQid(), "view");
		model.addAttribute("qna", qna);
		model.addAttribute("viewPage", viewPage);
		
		return "qna/qnaView";
	}
	
	@RequestMapping(value="/qnaModify.do", method=RequestMethod.GET)
	public String modifyForm(@ModelAttribute("qvo") QnaVO qvo, @ModelAttribute("viewPage") int viewPage, Model model) {
		QnaVO qna = service.view(qvo.getQid(), "modify");
		model.addAttribute("qna", qna);
		
		return "qna/qnaModify";
	}
	
	@RequestMapping(value="/qnaModify.do", method=RequestMethod.POST)
	public String modify(QnaVO qna,
			@ModelAttribute("viewPage") int viewPage, Model model) {
		System.out.println(qna);
		service.modify(qna);
		
		model.addAttribute("keyword", qna.getKeyWord());
		model.addAttribute("searchType", qna.getSearchType());
		
		return "redirect:/qnaList.do";
	}
	
	@RequestMapping("/qnaRemove.do")
	public String remove(@ModelAttribute QnaVO qvo,
			int viewPage, RedirectAttributes rttr) {
		service.remove(qvo.getQid());
		
		rttr.addFlashAttribute("qvo", qvo);
		
		return "redirect:/qnaList.do";
	}

			
			

}
