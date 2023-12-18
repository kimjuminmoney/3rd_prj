package kr.co.daitdayoung.login.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.dao.UserJoinDAO;
import kr.co.daitdayoung.login.vo.InsJoinVO;
import kr.co.daitdayoung.login.vo.UserJoinVO;
import kr.co.sist.util.cipher.DataEncrypt;

@Service
public class userJoinService {

    @Autowired
    private UserJoinDAO ujDAO;

    @Autowired
    private UserInfoEncryptionSerivice  encrypt;

    @PostMapping("doUJoin.do")
    public void addUser(UserJoinVO ujVO) {
		try {
			ujVO.setUiPw(encrypt.oneWayEncryptData(ujVO.getUiPw()));
			ujDAO.insertUser(ujVO);
			
		} catch (NoSuchAlgorithmException ne) {
			ne.printStackTrace();
		}
	}
    
    
}
