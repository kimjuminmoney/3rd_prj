package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.InquiryDAO;
import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.vo.LoginVO;

@Component
public class InquiryService {
	
	@Autowired
	private InquiryDAO iDAO;
	
	public List<InquiryDomain> searchInquiry (LoginVO lVO) {
		List<InquiryDomain> list = iDAO.selectInquiryList(lVO);
		return list;
		
	} //searchInquiry
	
	

} //class
