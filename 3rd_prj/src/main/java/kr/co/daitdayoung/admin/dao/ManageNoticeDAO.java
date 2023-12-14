package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageNoticeDomain;
import kr.co.daitdayoung.admin.vo.ManageNoticeVO;
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
	}//selectNotice

	public List<ManageNoticeDomain> selectCouNotice() throws PersistenceException{
		List<ManageNoticeDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mn.selectCouNotice");
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectCouNotice
	
	public ManageNoticeDomain selectDetailNot(String notCode) throws PersistenceException{
		ManageNoticeDomain detailNot = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailNot = ss.selectOne("kr.co.daitdayoung.admin.mn.selectDetailNot",notCode);
		
		mbh.closeHandler(ss);
		
		return detailNot;
	}//selectDetailNot

	public ManageNoticeDomain selectDetailCn(String cnCode) throws PersistenceException{
		ManageNoticeDomain detailCn = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailCn = ss.selectOne("kr.co.daitdayoung.admin.mn.selectDetailCn",cnCode);
		
		mbh.closeHandler(ss);
		
		return detailCn;
	}//selectDetailCn
	
	public int updateNot(ManageNoticeVO mnVO) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.update("kr.co.daitdayoung.admin.mn.updateNot", mnVO);
		
		if(cnt==1) {
			ss.commit();
		}//end if
		
		mbh.closeHandler(ss);
		
		return cnt;
	}//updateNot
	
	public String selectAdminName(String adminId) throws PersistenceException{
		String adminName = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		adminName = ss.selectOne("kr.co.daitdayoung.admin.mn.selectAdminName", adminId);
		
		mbh.closeHandler(ss);
		
		return adminName;
	}
	
	public int insertNot(ManageNoticeVO mnVO) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.insert("kr.co.daitdayoung.admin.mn.insertNot", mnVO);
		
		if(cnt>0) {
			ss.commit();
		}//end if
		
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public static void main(String[] args) {
		ManageNoticeVO mnVO = new ManageNoticeVO();
		mnVO.setAdminId("admin");
//		mnVO.setNotCode("NOT_999999");
		mnVO.setNotContent("테스트3333");
		mnVO.setNotTitle("테스트공지3");
//		new ManageNoticeDAO().updateNot(mnVO);
//		new ManageNoticeDAO().selectAdminName("admin");
		new ManageNoticeDAO().insertNot(mnVO);
	}
	
}//class
