package kr.co.daitdayoung.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.AdminLoginVO;

@Component
public class adminLoginDAO {

	@Autowired
	private MyBatisHandler mbh;
	
	public String selectAdminLogin(AdminLoginVO alVO) {
		mbh= mbh.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String adminId = ss.selectOne("kr.co.daitdayoung.login.adminLogin",alVO);
		mbh.closeHandler(ss);
		return adminId;
	}
}
