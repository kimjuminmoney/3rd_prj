package kr.co.daitdayoung.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.InsPwChkVO;
import kr.co.daitdayoung.login.vo.UserPwChkVO;

@Component
public class insPwChkDAO {

	@Autowired
	private MyBatisHandler mbh;
	
	public String selectIns(InsPwChkVO ipcVO) {
		mbh.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String pw = ss.selectOne("kr.co.daitdayoung.login.insPwChk",ipcVO);
		mbh.closeHandler(ss);
		return pw;
	}
	
}
