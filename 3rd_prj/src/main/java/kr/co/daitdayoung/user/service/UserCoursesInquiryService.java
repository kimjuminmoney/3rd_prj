package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.user.dao.UserCoursesInquiryDAO;
import kr.co.daitdayoung.user.domain.UserCoursesInquiryDomain;
import kr.co.daitdayoung.user.vo.UserCoursesInquiryVO;

@Component
public class UserCoursesInquiryService {
	
	@Autowired
	private UserCoursesInquiryDAO uciDAO;
	
	public List<UserCoursesInquiryDomain> searchCoursesInquiryList(String uiId) {
		return uciDAO.selectCoursesInquiryList(uiId);
	}// searchCoursesInquiryList
	
	public List<UserCoursesInquiryDomain> searchCoursesInquiryTypeList() {
		return uciDAO.selectCoursesInquiryTypeList();
	}// searchCoursesInquiryList
	
	public List<UserCoursesInquiryDomain> searchCoursesInquiryCouList(String uiId) {
		return uciDAO.selectCoursesInquiryCouList(uiId);
	}// searchCoursesInquiryList
	
	public UserCoursesInquiryDomain searchCoursesInquiryDetail(String ciCode) {
		return uciDAO.selectCoursesInquiryDetail(ciCode);
	}// searchCoursesInquiryList
	
	public void addCoursesInquiry(UserCoursesInquiryVO uciVO) {
		uciDAO.insertInquiry(uciVO);
	}// searchCoursesInquiryList
	

}
