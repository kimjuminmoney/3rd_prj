package kr.co.daitdayoung.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.LoginVO;

@Component
public class LoginDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public String selectUserLogin(LoginVO ulVO) {
		
		mbh = mbh.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String id = ss.selectOne("kr.co.daitdayoung.login.userLogin", ulVO);
		mbh.closeHandler(ss);
		return id;
	}
	public String selectInsLogin(LoginVO ulVO) {
		
		mbh = mbh.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String id = ss.selectOne("kr.co.daitdayoung.login.insLogin", ulVO);
		mbh.closeHandler(ss);
		return id;
	}
	

}
