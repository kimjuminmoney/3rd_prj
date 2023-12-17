package kr.co.daitdayoung.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.dao.DashboardDAO;
import kr.co.daitdayoung.admin.domain.DashboardDomain;

@Component
public class DashboardService {

	@Autowired
	private DashboardDAO dbd;
	
	public int searchRecJoin() throws PersistenceException {
		int recJoin = 0;
		
		recJoin = dbd.selectRecJoin();
		
		return recJoin;
	}//searchRecJoin

	public int searchCoursesCnt() throws PersistenceException {
		int coursesCnt = 0;
		
		coursesCnt = dbd.selectCoursesCnt();
		
		return coursesCnt;
	}//searchRecJoin
	
	public int searchCompCnt() throws PersistenceException {
		int compCnt = 0;
		
		compCnt = dbd.selectCompCnt();
		
		return compCnt;
	}//searchRecJoin
	
	public int searchTotalVisitor() throws PersistenceException {
		int totVis = 0;
		
		totVis = dbd.selectTotalVisitor();
		
		return totVis;
	}//searchRecJoin
	
	public List<Integer> searchDailyVisitor() throws PersistenceException {
		List<Integer> list = null;
		
		list = dbd.selectDailyVisitor();
		
		return list;
	}//searchRecJoin
	
	public List<Integer> searchDailyVisDate() throws PersistenceException {
		List<Integer> list = null;
		
		list = dbd.selectDailyVisDate();
		
		return list;
	}//searchRecJoin
	
	public List<DashboardDomain> searchStudentCou() throws PersistenceException {
		List<DashboardDomain> list = null;
		
		list = dbd.selectStudentCou();
		
		return list;
	}//searchRecJoin
	
}//class
