package kr.co.daitdayoung.user.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class UserComplecationDAO {

	@Autowired
	private MyBatisHandler mbh;
	
	public int updateCompletion(String crgCode) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.update("kr.co.daitdayoung.user.exam.completionUpdate",crgCode);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);
		
		return cnt;
	}
}
