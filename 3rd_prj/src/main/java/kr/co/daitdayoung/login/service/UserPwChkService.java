package kr.co.daitdayoung.login.service;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.UserPwChkDAO;
import kr.co.daitdayoung.login.vo.UserPwChkVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Service
public class UserPwChkService {

		@Autowired
		private UserPwChkDAO upcDAO;
		
		@Autowired
		private UserInfoEncryptionSerivice encrypt;
		
		public String searchUserPw(UserPwChkVO upcVO) {
			String pw = upcDAO.selectUser(upcVO);
			return pw;
		}
		
		@PostMapping("chkUserPw.do")
		public String chkUser(UserPwChkVO upcVO) {
			String pw="";
			try {
				upcVO.setPw(encrypt.oneWayEncryptData(upcVO.getPw()));
				pw=upcDAO.selectUser(upcVO);
			}catch (NoSuchAlgorithmException ne) {
				ne.printStackTrace();
			}
			return pw;
		}
		
}
