package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageCoursesDomain;
import kr.co.daitdayoung.admin.vo.ManageCoursesVO;
import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesDetailDomain;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.index.domain.CoursesRegistrationDomain;
import kr.co.daitdayoung.index.vo.CoursesRegistrationVO;

@Component
public class ManageCoursesDAO {
	
	@Autowired 
	 private MyBatisHandler mbh;
	
	public List<ManageCoursesDomain> selectCourses() throws PersistenceException{
		List<ManageCoursesDomain> list = null;
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mc.selectCourses");
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectCourses
	
	 public CoursesDetailDomain selectCoursesDetail(String couCode) {
			
			mbh = MyBatisHandler.getInstance();
			SqlSession ss = mbh.getMyBatisHandler(false);
			CoursesDetailDomain cdDomain = ss.selectOne("kr.co.daitdayoung.admin.mc.coursesDetail2", couCode);
			mbh.closeHandler(ss);
			
			return cdDomain;
	} //selectCoursesDetail
	 
	 public List<CoursesLectureDomain> selectLectureList(String couCode) {
		 
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 List<CoursesLectureDomain> list = ss.selectList("kr.co.daitdayoung.admin.mc.lectureList2", couCode);
		 mbh.closeHandler(ss);
		 
		 return list;
	 } //selectLectureList
	 
	 public List<CoursesRegistrationDomain> selectCoursesRegistration(CoursesRegistrationVO crVO) throws PersistenceException{
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 List<CoursesRegistrationDomain> crList= ss.selectList("kr.co.daitdayoung.admin.mc.reCompletion2", crVO);
		 mbh.closeHandler(ss);
		 return crList;
	 }
	 
	 public int selectCompletionCnt(String couCode) throws PersistenceException {
		 int cnt = 0;
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 cnt = ss.selectOne("kr.co.daitdayoung.admin.mc.completionCnt2", couCode);
		 mbh.closeHandler(ss);
		 
		 return cnt;
	 }
	
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
	
	public int insertExam(ManageCoursesVO mcVO) throws PersistenceException{
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt = ss.insert("kr.co.daitdayoung.admin.mc.insertExam", mcVO);
		
		if(cnt==1) {
			ss.commit();
		}
		
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public static void main(String[] args) {
		ManageCoursesVO mcVO = new ManageCoursesVO();
		
		mcVO.setCouCode("COU_999996");
		mcVO.setInsId("ins1");
		
		new ManageCoursesDAO().insertExam(mcVO);
	}
	
}//class





