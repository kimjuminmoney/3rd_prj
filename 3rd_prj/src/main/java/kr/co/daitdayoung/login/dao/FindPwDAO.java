package kr.co.daitdayoung.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.FindIdVO;
import kr.co.daitdayoung.login.vo.FindPwVO;
import kr.co.daitdayoung.login.vo.InsJoinVO;
import kr.co.daitdayoung.login.vo.LoginVO;
import kr.co.daitdayoung.login.vo.UserJoinVO;
@Component
public class FindPwDAO {
	@Autowired
	private MyBatisHandler mbh;
	
	public FindPwDAO() {
		mbh= MyBatisHandler.getInstance();
	}
	public String selectUserPw(FindPwVO fpVo) {
		mbh=mbh.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		String id=null;
		id = ss.selectOne("kr.co.daitdayoung.login.userPw", fpVo);
		mbh.closeHandler(ss);
		return id;
	}
	
	public String selectInsPw(FindPwVO fpVo) {
		mbh=mbh.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		String id=null;
		id = ss.selectOne("kr.co.daitdayoung.login.insPw", fpVo);
		mbh.closeHandler(ss);
		return id;
	}
				
	

}
