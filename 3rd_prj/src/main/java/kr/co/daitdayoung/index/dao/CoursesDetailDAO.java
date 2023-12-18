package kr.co.daitdayoung.index.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesDetailDomain;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.index.domain.CoursesRegistrationDomain;
import kr.co.daitdayoung.index.vo.CoursesRegistrationVO;

@Component
public class CoursesDetailDAO {
	
	 @Autowired 
	 private MyBatisHandler mbh;

	 public CoursesDetailDomain selectCoursesDetail(String couCode) {
			
			mbh = MyBatisHandler.getInstance();
			SqlSession ss = mbh.getMyBatisHandler(false);
			CoursesDetailDomain cdDomain = ss.selectOne("kr.co.daitdayoung.index.coursesDetail.coursesDetail", couCode);
			mbh.closeHandler(ss);
			
			return cdDomain;
	} //selectCoursesDetail
	 
	 public List<CoursesLectureDomain> selectLectureList(String couCode) {
		 
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 List<CoursesLectureDomain> list = ss.selectList("kr.co.daitdayoung.index.coursesDetail.lectureList", couCode);
		 mbh.closeHandler(ss);
		 
		 return list;
	 } //selectLectureList
	 
	 public List<CoursesRegistrationDomain> selectCoursesRegistration(CoursesRegistrationVO crVO) throws PersistenceException{
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 List<CoursesRegistrationDomain> crList= ss.selectList("kr.co.daitdayoung.index.coursesDetail.reCompletion", crVO);
		 mbh.closeHandler(ss);
		 return crList;
	 }
	 
	 public int selectCompletionCnt(String couCode) throws PersistenceException {
		 int cnt = 0;
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 cnt = ss.selectOne("kr.co.daitdayoung.index.coursesDetail.completionCnt", couCode);
		 mbh.closeHandler(ss);
		 
		 return cnt;
	 }
	 
	 public int insertCompletion(CoursesRegistrationVO crVO) throws PersistenceException {
		 int cnt = 0;
		 mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 cnt = ss.insert("kr.co.daitdayoung.index.coursesDetail.comletionInsert", crVO);
		 if(cnt == 1) {
			 ss.commit();
		 }
		 mbh.closeHandler(ss);
		 return cnt;
	 }
	 
	 public static void main(String[] args) {
		 CoursesDetailDAO dao = new CoursesDetailDAO();
		 CoursesRegistrationVO vo = new CoursesRegistrationVO();
		 vo.setUiId("ui_test");
		 vo.setCouCode("COU_999999");
		 
		 List<CoursesRegistrationDomain> d = dao.selectCoursesRegistration(vo);
		 System.out.println(d);
	 }
	 
		
} //class
