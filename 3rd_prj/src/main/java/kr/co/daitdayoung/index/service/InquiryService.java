package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.InquiryDAO;
import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.vo.InquiryVO;
import kr.co.daitdayoung.index.vo.LoginVO;

@Component
public class InquiryService {
	
	@Autowired
	private InquiryDAO iDAO;
	
	public List<InquiryDomain> searchInquiry (LoginVO lqVO) { //전체
		List<InquiryDomain> list = iDAO.selectInquiryList(lqVO);
		return list;
		
	} //searchInquiry
	
	public InquiryDomain searchInquiryDetail (String inqCode) { //상세 하나

		return iDAO.selectInquiry(inqCode);
	}
	
	public List<InquiryDomain> searchInqCategory (String inName) { //전체
		List<InquiryDomain> list = iDAO.searchInqCategory(inName);
		return list;
		
	} //searchInquiry
	
	public List<InquiryDomain> searchInqWrite (InquiryVO inqVO) {
		List<InquiryDomain> list = iDAO.searchInqWrite(inqVO);
		return list;
	}
	
} //class
