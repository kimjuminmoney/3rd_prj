package kr.co.daitdayoung.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.login.dao.FindIdDAO;
import kr.co.daitdayoung.login.vo.FindIdVO;
import kr.co.daitdayoung.login.vo.InsJoinVO;
import kr.co.daitdayoung.login.vo.LoginVO;
import kr.co.daitdayoung.login.vo.UserJoinVO;

@Component
public class FindIdService {
	@Autowired
	private FindIdDAO fiDAO;
	
	public String searchUserId(FindIdVO fiVO) {
		String id= fiDAO.selectUserId(fiVO);
		return id;
	}
	public String searchInsId(FindIdVO fiVO) {
		String id= fiDAO.selectInsId(fiVO);
		return id;
	}
	
	public String searchUserIdByLogin(FindIdVO fiVO) {
		String id=fiDAO.selectUserId(fiVO);
		return id;
	}
	public String searchInsIdByLogin(FindIdVO fiVO) {
		String id=fiDAO.selectInsId(fiVO);
		return id;
	}

}
