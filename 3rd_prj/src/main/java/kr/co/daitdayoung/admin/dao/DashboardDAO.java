package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.DashboardDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class DashboardDAO {

	public int selectRecJoin() throws PersistenceException{
		int recJoin = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		recJoin = ss.selectOne("kr.co.daitdayoung.admin.dash.selectRecJoin");
		
		mbh.closeHandler(ss);
		
		return recJoin;
	}//selectRecJoin

	public int selectCoursesCnt() throws PersistenceException{
		int coursesCnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		coursesCnt = ss.selectOne("kr.co.daitdayoung.admin.dash.selectCoursesCnt");
		
		mbh.closeHandler(ss);
		
		return coursesCnt;
	}//selectCoursesCnt

	public int selectCompCnt() throws PersistenceException{
		int compCnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		compCnt = ss.selectOne("kr.co.daitdayoung.admin.dash.selectCompCnt");
		
		mbh.closeHandler(ss);
		
		return compCnt;
	}//selectRecJoin
	
	public int selectTotalVisitor() throws PersistenceException{
		int totVis = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		totVis = ss.selectOne("kr.co.daitdayoung.admin.dash.selectTotalVisitor");
		
		mbh.closeHandler(ss);
		
		return totVis;
	}//selectTotalVisitor
	
	public List<Integer> selectDailyVisitor() throws PersistenceException{
		List<Integer> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.dash.selectDailyVisitor");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<Integer> selectDailyVisDate() throws PersistenceException{
		List<Integer> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.dash.selectDailyVisDate");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<DashboardDomain> selectStudentCou() throws PersistenceException{
		List<DashboardDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.dash.selectStudentCou");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		System.out.println(new DashboardDAO().selectStudentCou());
	}
	
}//class
