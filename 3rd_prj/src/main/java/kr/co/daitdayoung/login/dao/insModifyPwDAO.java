package kr.co.daitdayoung.login.dao;

import java.lang.module.ModuleFinder;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.login.vo.ModifyPwVO;

@Component
public class insModifyPwDAO {
	
	public int updateIns(ModifyPwVO mupVO)throws PersistenceException{
		int cnt = 0;
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		
		System.out.println(mupVO);
		cnt = ss.update("kr.co.daitdayoung.login.updateInsPw",mupVO);
		
		if(cnt==1) {
			ss.commit();
		}
		mbh.closeHandler(ss);
		return cnt;
	}
	/*
	 * public int updateIns(ModifyPwVO mupVO)throws PersistenceException{ int cnt =
	 * 0; MyBatisHandler mbh= MyBatisHandler.getInstance(); SqlSession ss =
	 * mbh.getMyBatisHandler(false);
	 * 
	 * cnt = ss.update("kr.co.daitdayoung.login.updateInsPw",mupVO);
	 * 
	 * if(cnt==1) { ss.commit(); } mbh.closeHandler(ss); return cnt; }
	 */

}
