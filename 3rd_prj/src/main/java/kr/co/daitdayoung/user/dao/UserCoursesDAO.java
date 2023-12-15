package kr.co.daitdayoung.user.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.CoursesExamInfoDomain;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Component
public class UserCoursesDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public UserCoursesDomain selectCourseInfo(UserCoursesVO ucVO) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		UserCoursesDomain ucd = ss.selectOne("kr.co.daitdayoung.user.courses.coursesInfo", ucVO);

		mbh.closeHandler(ss);
		return ucd;
	}//selectCourseReristration
	
	public List<UserCoursesNoticeDomain> selectCourseNoticeList(String couCode) throws PersistenceException{
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesNoticeDomain> list = ss.selectList("kr.co.daitdayoung.user.courses.coursesNoticeList",couCode);
		mbh.closeHandler(ss);
		return list;
	}//selectCourseNotice
	
	public UserCoursesNoticeDomain selectCourseNoticeDetail(String cnCode) throws PersistenceException{
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		UserCoursesNoticeDomain ucnDomain = ss.selectOne("kr.co.daitdayoung.user.courses.coursesNoticeDetail",cnCode);
		mbh.closeHandler(ss);
		return ucnDomain;
	}//selectCourseNotice
	
	public List<UserCoursesLectureDomain> selectCourseLectureList(UserCoursesVO cuVO) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesLectureDomain> list = ss.selectList("kr.co.daitdayoung.user.courses.coursesLectureList",cuVO);
		mbh.closeHandler(ss);
		return list;
	}//selectCourseNotice
	
	public UserCoursesLectureDomain selectCourseLectureDetail(UserCoursesVO cuVO) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		UserCoursesLectureDomain uclDomain = ss.selectOne("kr.co.daitdayoung.user.courses.coursesLectureDetail",cuVO);
		mbh.closeHandler(ss);
		return uclDomain;
	}//selectCourseNotice
	
	public UserCoursesExamDomain selectCourseExam(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		UserCoursesExamDomain uceDomain = ss.selectOne("kr.co.daitdayoung.user.courses.coursesExam", couCode);

		mbh.closeHandler(ss);
		return uceDomain;
	}//selectCourseReristration
	
	public CoursesExamInfoDomain selectCourseExamInfo(UserCoursesVO ucVO) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		CoursesExamInfoDomain examInfo = ss.selectOne("kr.co.daitdayoung.user.courses.coursesExamInfo", ucVO);
		
		mbh.closeHandler(ss);
		return examInfo;
	}//selectCourseReristration
	
	
	public static void main(String[] args) {
		UserCoursesVO cuVO = new UserCoursesVO("COU_999999","ui_test1","LEC_999999","CRG_999999");
		System.out.println(new UserCoursesDAO().selectCourseExamInfo(cuVO));
		//System.out.println(new UserCoursesDAO().selectCourseExam("COU_999999"));
		//List<UserCoursesLectureDomain> list = new UserCoursesDAO().selectCourseLectureList(cuVO);
		//System.out.println(new UserCoursesDAO().selectCourseNoticeList("COU_999999"));
		//System.out.println(new UserCoursesDAO().selectCourseInfo(cuVO));
//		for(UserCoursesLectureDomain uc : list) {
//			System.out.println(uc);
//		}
		//System.out.println(new UserCoursesDAO().selectCourseLectureDetail(cuVO));
	}
	

}//class
