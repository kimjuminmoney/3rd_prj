package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageCoursesDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class ManageCoursesDAO {
	
	public List<ManageCoursesDomain> selectCourses() throws PersistenceException{
		List<ManageCoursesDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mc.selectCourses");
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectCourses
	
	public int updateApprove(String couCode) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.update("kr.co.daitdayoung.admin.mc.updateApprove", couCode);
		
		if(cnt==1) {
			ss.commit();
		}
		
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public static void main(String[] args) {
		System.out.println(new ManageCoursesDAO().selectCourses());
	}
	
}//class





