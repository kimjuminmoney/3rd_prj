package kr.co.daitdayoung.login.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.InsJoinDAO;
import kr.co.daitdayoung.login.dao.UserJoinDAO;
import kr.co.daitdayoung.login.vo.InsJoinVO;
import kr.co.daitdayoung.login.vo.UserJoinVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Service
public class insJoinService {

    @Autowired
    private InsJoinDAO ijDAO;

    @Autowired
    private UserInfoEncryptionSerivice encrypt;

	@PostMapping("doIJoin.do")
	public void addIns(InsJoinVO ijVO) {
		try {
			ijVO.setInsPw(DataEncrypt.messageDigest("MD5", encrypt.oneWayEncryptData(ijVO.getInsPw())));
			ijDAO.insertUser(ijVO);
			
		} catch (NoSuchAlgorithmException ne) {
			ne.printStackTrace();
		}
	}
    
    public JSONObject chkInfo(InsJoinVO ijVO) {
    	JSONObject jsonObj = new JSONObject();
    	jsonObj.put("flag", false);
    	jsonObj.put("flagMsg","");
    	
    	String msg="";
    	if(!(checkEmail(ijVO.getInsEmail())&& checkPhone(ijVO.getInsTel()))) {
    		jsonObj.put("flagMsg","다시 확인해주세요");
    	}else {
    		jsonObj.put("flag", true);
    	}
    	return jsonObj;

    }
    public boolean checkEmail(String insEmail) {
    	String emailReg = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
    	boolean flag=false;
    	
	flag = Pattern.matches(emailReg, insEmail) && !insEmail.contains("@retro.co.kr") && !insEmail.contains("@retro.com");
		
        return flag;
    }
    
    public boolean checkPhone(String insTel) {
		String emailReg = "^\\d{3}\\d{3,4}\\d{4}$";
		return Pattern.matches(emailReg, insTel);
	}
    
}
