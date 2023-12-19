package kr.co.daitdayoung.login.service;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.LoginDAO;
import kr.co.daitdayoung.login.vo.LoginVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Service
public class LoginService {
	
	@Autowired
	private LoginDAO lDAO;
	
	 @Autowired
	 private UserInfoEncryptionSerivice  encrypt;
	
	public String searchUserLogin(LoginVO ulVO) {
		String id = lDAO.selectUserLogin(ulVO);
		return id;
	}
	public String searchInsLogin(LoginVO ulVO) {
		String id = lDAO.selectInsLogin(ulVO);
		return id;
	}
	@PostMapping("doLogin.do")
	public String loginUser(LoginVO lVO) {
		String id="";
		try {
			lVO.setPw(encrypt.oneWayEncryptData(lVO.getPw()));
			id=lDAO.selectUserLogin(lVO);
		}catch (NoSuchAlgorithmException ne) {
			ne.printStackTrace();
		}
		return id;
	}
	@PostMapping("doLogin.do")
	public String loginIns(LoginVO lVO) {
		String id="";
		try {
			lVO.setPw(encrypt.oneWayEncryptData(lVO.getPw()));
			id=lDAO.selectInsLogin(lVO);
		}catch (NoSuchAlgorithmException ne) {
			ne.printStackTrace();
		}
		return id;
	}
	
	
}
