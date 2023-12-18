package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CodeDomain;
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
	} // selectCoursesDetail

	public List<CoursesLectureDomain> selectLectureList(String couCode) {

		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<CoursesLectureDomain> list = ss.selectList("kr.co.daitdayoung.index.coursesDetail.lectureList", couCode);
		mbh.closeHandler(ss);

		return list;
	} // selectLectureList

	public CoursesRegistrationDomain selectCoursesRegistration(CoursesRegistrationVO crVO) throws PersistenceException {
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		CoursesRegistrationDomain crDomain = ss.selectOne("kr.co.daitdayoung.index.coursesDetail.reCompletion", crVO);
		mbh.closeHandler(ss);
		return crDomain;
	}

	public int selectCompletionCnt(String couCode) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.selectOne("kr.co.daitdayoung.index.coursesDetail.completionCnt", couCode);
		mbh.closeHandler(ss);

		return cnt;
	}

	public CodeDomain insertCompletion(CoursesRegistrationVO crVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.insert("kr.co.daitdayoung.index.coursesDetail.comletionInsert", crVO);
		CodeDomain cDomain = new CodeDomain();
		cDomain.setCnt(cnt);
		cDomain.setCrgCode(crVO.getCrgCode());
		if (cnt == 1) {
			ss.commit();
		}
		mbh.closeHandler(ss);
		return cDomain;
	}

	public int insertCoursesRecodr(CoursesRegistrationVO crVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.insert("kr.co.daitdayoung.index.coursesDetail.courseRecordInsert", crVO);
		if (cnt > 0) {
			ss.commit();
		}
		mbh.closeHandler(ss);
		return cnt;
	}
	
	public int insertExamParticipationInsert(CoursesRegistrationVO crVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.insert("kr.co.daitdayoung.index.coursesDetail.examParticipationInsert", crVO);
		if (cnt == 1) {
			ss.commit();
		}
		mbh.closeHandler(ss);
		return cnt;
	}
	
	


} // class
