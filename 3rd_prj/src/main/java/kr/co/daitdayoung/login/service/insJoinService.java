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
			ijVO.setInsPw(encrypt.oneWayEncryptData(ijVO.getInsPw()));
			ijDAO.insertIns(ijVO);
			
		} catch (NoSuchAlgorithmException ne) {
			ne.printStackTrace();
		}
	}
    
}
