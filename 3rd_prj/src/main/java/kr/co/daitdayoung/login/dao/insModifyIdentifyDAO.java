package kr.co.daitdayoung.login.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.modifyIdentifyVO;

@Component
public class insModifyIdentifyDAO {

	public int updateIns(modifyIdentifyVO miVO)throws PersistenceException{
		int cnt=0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		
		cnt=ss.update("kr.co.daitdayoung.login.updateIns",miVO);
		
		if(cnt==1) {
			ss.commit();
		}
		mbh.closeHandler(ss);
		return cnt;
	}
}
