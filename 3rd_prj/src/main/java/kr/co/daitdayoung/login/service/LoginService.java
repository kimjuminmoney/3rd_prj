package kr.co.daitdayoung.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.login.dao.LoginDAO;
import kr.co.daitdayoung.login.vo.LoginVO;

@Component
public class LoginService {
	
	@Autowired
	private LoginDAO lDAO;
	
	public String searchUserLogin(LoginVO ulVO) {
		String id = lDAO.selectUserLogin(ulVO);
		return id;
	}
	public String searchInsLogin(LoginVO ulVO) {
		String id = lDAO.selectInsLogin(ulVO);
		return id;
	}
	
	
}
