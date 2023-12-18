package kr.co.daitdayoung.login.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.userModifyPwDAO;
import kr.co.daitdayoung.login.vo.ModifyPwVO;

@Component
public class UserModifyPwService {

	 @Autowired 
	 private userModifyPwDAO umpDAO;
	 @Autowired
	 private UserInfoEncryptionSerivice encrypt;
	 
	 public int modifyUser(ModifyPwVO mpVO)throws PersistenceException{
		 int cnt = 0;
		 cnt=umpDAO.updateUser(mpVO);
		 
		 return cnt;
	 }
	 public int modifyUserPw(ModifyPwVO mpVO) {
		 int pw = 0;
		 try {
			 mpVO.setUiPw(encrypt.oneWayEncryptData(mpVO.getUiPw()));
			 mpVO.setNpw(encrypt.oneWayEncryptData(mpVO.getNpw()));
			 System.out.println("----------"+mpVO);
			 pw=umpDAO.updateUser(mpVO);
		 }catch(NoSuchAlgorithmException ne) {
			 ne.printStackTrace();
		 }
		 return pw;
	 }
	 
}