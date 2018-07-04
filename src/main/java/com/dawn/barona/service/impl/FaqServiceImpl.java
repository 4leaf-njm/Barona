package com.dawn.barona.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dawn.barona.dao.FaqDAO;
import com.dawn.barona.service.FaqService;
import com.dawn.barona.vo.FaqVO;
import com.dawn.barona.vo.SearchCriteria;

@Service
public class FaqServiceImpl implements FaqService{

	@Autowired
	private FaqDAO faqDAO;
	
	@Override
	public List<FaqVO> getFaqList() throws SQLException {
		return faqDAO.selectFaqList();
	}

	@Override
	public FaqVO getFaqByNo(int faqNo) throws SQLException {
		return faqDAO.selectFaqByNo(faqNo);
	}

	@Override
	public void insertFaq(FaqVO faq) throws SQLException {
		faqDAO.insertFaq(faq);
	}

	@Override
	public void modifyFaq(FaqVO faq) throws SQLException {
		faqDAO.updateFaq(faq);
	}

	@Override
	public void removeFaq(int faqNo) throws SQLException {
		faqDAO.deleteFaq(faqNo);
	}

	@Override
	public List<FaqVO> getFaqListSearch(SearchCriteria cri) throws SQLException {
		return faqDAO.selectFaqListSearch(cri);
	}

	@Override
	public int getFaqSearchCount(SearchCriteria cri) throws SQLException {
		return faqDAO.selectFaqSearchCount(cri);
	}

}
