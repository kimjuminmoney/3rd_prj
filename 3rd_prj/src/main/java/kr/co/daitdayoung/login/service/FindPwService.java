package kr.co.daitdayoung.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.login.dao.FindIdDAO;
import kr.co.daitdayoung.login.dao.FindPwDAO;
import kr.co.daitdayoung.login.vo.FindIdVO;
import kr.co.daitdayoung.login.vo.FindPwVO;
import kr.co.daitdayoung.login.vo.InsJoinVO;
import kr.co.daitdayoung.login.vo.LoginVO;
import kr.co.daitdayoung.login.vo.UserJoinVO;

@Component
public class FindPwService {
	@Autowired
	private FindPwDAO fpDAO;
	
	public String searchUserId(FindPwVO fpVO) {
		String id= fpDAO.selectUserPw(fpVO);
		return id;
	}
	public String searchInsId(FindPwVO fpVO) {
		String id= fpDAO.selectInsPw(fpVO);
		return id;
	}
	
	public String searchUserIdByLogin(FindPwVO fpVO) {
		String id=fpDAO.selectUserPw(fpVO);
		return id;
	}
	public String searchInsIdByLogin(FindPwVO fpVO) {
		String id=fpDAO.selectInsPw(fpVO);
		return id;
	}

}
