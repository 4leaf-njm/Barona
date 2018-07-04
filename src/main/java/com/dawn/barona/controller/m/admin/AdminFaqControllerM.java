package com.dawn.barona.controller.m.admin;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dawn.barona.service.FaqService;
import com.dawn.barona.vo.FaqVO;
import com.dawn.barona.vo.PageMaker;
import com.dawn.barona.vo.SearchCriteria;

@Controller
@RequestMapping("/m/admin/faq")
public class AdminFaqControllerM {

	@Autowired
	private FaqService faqService;
	
	@RequestMapping("list.do")
	public String goFaqList(@ModelAttribute("menu_code") String menu_code, @ModelAttribute("cri") SearchCriteria cri, Model model) throws SQLException {
		cri.setPerPageNum(8);
		List<FaqVO> faqSearchList = faqService.getFaqListSearch(cri);
		
		int totalCount = faqService.getFaqSearchCount(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setDisplayPageNum(5);
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		model.addAttribute("faqList", faqSearchList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/admin/faq/faq_list";
	}
	
	@RequestMapping(value="register.do", method=RequestMethod.POST)
	public String register(FaqVO faq, String menu_code, RedirectAttributes rttr) throws SQLException {
		faqService.insertFaq(faq);
		rttr.addAttribute("menu_code", menu_code);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public String modify(SearchCriteria cri, FaqVO faq, String menu_code, RedirectAttributes rttr) throws SQLException {
		faqService.modifyFaq(faq);
		rttr.addAttribute("no", faq.getFaqNo());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("menu_code", menu_code);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="remove.do", method=RequestMethod.POST)
	public String remove(@RequestParam("no") int faqNo, SearchCriteria cri, String menu_code, RedirectAttributes rttr) throws SQLException {
		faqService.removeFaq(faqNo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addAttribute("menu_code", menu_code);
		return "redirect:list.do";
	}
}