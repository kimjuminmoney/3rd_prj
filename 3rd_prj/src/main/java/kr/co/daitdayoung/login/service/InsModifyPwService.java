package kr.co.daitdayoung.login.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.insModifyPwDAO;
import kr.co.daitdayoung.login.dao.userModifyPwDAO;
import kr.co.daitdayoung.login.vo.ModifyPwVO;

@Component
public class InsModifyPwService {

	 @Autowired 
	 private insModifyPwDAO impDAO;
	 @Autowired
	 private UserInfoEncryptionSerivice encrypt;
	 
	 public int modifyIns(ModifyPwVO mpVO)throws PersistenceException{
		 int cnt = 0;
		 cnt=impDAO.updateIns(mpVO);
		 
		 return cnt;
	 }
	 
	 public int modifyInsPw(ModifyPwVO mpVO) {
		 int pw =0;
		 try { 
			 mpVO.setInsPw(encrypt.oneWayEncryptData(mpVO.getInsPw()));
			 mpVO.setNpw(encrypt.oneWayEncryptData(mpVO.getNpw()));
			 System.out.println("-------------------"+mpVO);
			 pw=impDAO.updateIns(mpVO);
		 }catch (NoSuchAlgorithmException ne) {
			 ne.printStackTrace();
		 }
		 return pw;
	 }
	 
}