package com.dawn.barona.controller.m;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dawn.barona.service.NoticeService;
import com.dawn.barona.vo.NoticeVO;
import com.dawn.barona.vo.PageMaker;
import com.dawn.barona.vo.SearchCriteria;

@Controller
@RequestMapping("/m/counsel")
public class NoticeControllerM {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("notice_list.do")
	public String goNoticeList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws SQLException {
		cri.setPerPageNum(8);
		List<NoticeVO> noticeSearchList = noticeService.getNoticeListSearch(cri);
		
		int totalCount = noticeService.getNoticeSearchCount(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setDisplayPageNum(5);
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		model.addAttribute("noticeList", noticeSearchList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageMaker", pageMaker);
		return "mobile/counsel/notice_list";
	}
	
	@RequestMapping("notice_view.do")
	public String goNoticeView(@ModelAttribute("cri") SearchCriteria cri, @RequestParam("no") int noticeNo, 
			                   Model model) throws SQLException {
		NoticeVO notice = noticeService.modifyNoticeHit(noticeNo);
		model.addAttribute("notice", notice);
		return "mobile/counsel/notice_view";
	}
	
	
}
