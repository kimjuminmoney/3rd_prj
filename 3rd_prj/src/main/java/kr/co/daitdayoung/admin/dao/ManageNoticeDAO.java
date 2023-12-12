package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageNoticeDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class ManageNoticeDAO {

	public List<ManageNoticeDomain> selectNotice() throws PersistenceException{
		List<ManageNoticeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mn.selectNotice");
		
		mbh.closeHandler(ss);
		
		return list;
	}

	public List<ManageNoticeDomain> selectCouNotice() throws PersistenceException{
		List<ManageNoticeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mn.selectCouNotice");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public ManageNoticeDomain selectDetailNot(String notCode) throws PersistenceException{
		ManageNoticeDomain detailNot = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailNot = ss.selectOne("kr.co.daitdayoung.admin.mn.selectDetailNot",notCode);
		
		mbh.closeHandler(ss);
		
		return detailNot;
	}

	public ManageNoticeDomain selectDetailCn(String cnCode) throws PersistenceException{
		ManageNoticeDomain detailCn = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailCn = ss.selectOne("kr.co.daitdayoung.admin.mn.selectDetailCn",cnCode);
		
		mbh.closeHandler(ss);
		
		return detailCn;
	}
	
}
