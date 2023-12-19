package kr.co.daitdayoung.login.service;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.UserPwChkDAO;
import kr.co.daitdayoung.login.dao.insPwChkDAO;
import kr.co.daitdayoung.login.vo.InsPwChkVO;
import kr.co.daitdayoung.login.vo.UserPwChkVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Component
public class insPwChkService {

		@Autowired
		private insPwChkDAO ipcDAO;
		
		@Autowired
		private UserInfoEncryptionSerivice encrypt;
		
		public String searchInsPw(InsPwChkVO ipcVO) {
			String pw = ipcDAO.selectIns(ipcVO);
			return pw;
		}
		
		@PostMapping("chkInsPw.do")
		public String chkIns(InsPwChkVO ipcVO) {
			String pw="";
			try {
				ipcVO.setPw(encrypt.oneWayEncryptData(ipcVO.getPw()));
				pw=ipcDAO.selectIns(ipcVO);
			}catch (NoSuchAlgorithmException ne) {
				ne.printStackTrace();
			}
			return pw;
		}
		
		
}
