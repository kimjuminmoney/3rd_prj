package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserCoursesInquiryDomain;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;
import kr.co.daitdayoung.user.vo.UserCoursesInquiryVO;

@Component
public class UserCoursesInquiryDAO {

	@Autowired
	private MyBatisHandler mbh;

	public List<UserCoursesInquiryDomain> selectCoursesInquiryList(String uiId) throws PersistenceException {
		List<UserCoursesInquiryDomain> list = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		list = ss.selectList("kr.co.daitdayoung.user.coursesInquiry.coursesInquiryList", uiId);

		mbh.closeHandler(ss);

		return list;
	}// selectCoursesInquiryList

	public List<UserCoursesInquiryDomain> selectCoursesInquiryTypeList() throws PersistenceException {
		List<UserCoursesInquiryDomain> list = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		list = ss.selectList("kr.co.daitdayoung.user.coursesInquiry.coursesInquiryTypeList");

		mbh.closeHandler(ss);

		return list;
	}// selectCoursesInquiryTypeList

	public void insertInquiry(UserCoursesInquiryVO uciVO) throws PersistenceException {
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		int cnt = ss.insert("kr.co.daitdayoung.user.coursesInquiry.coursesInquiryInsert", uciVO);
		
		if(cnt == 1) {
			ss.commit();
		}//end if
		
		mbh.closeHandler(ss);
	}// insertInquiry

	public List<UserCoursesInquiryDomain> selectCoursesInquiryCouList(String uiId) throws PersistenceException {
		List<UserCoursesInquiryDomain> list = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		list = ss.selectList("kr.co.daitdayoung.user.coursesInquiry.coursesInquiryCouList", uiId);

		mbh.closeHandler(ss);

		return list;
	}// selectCoursesInquiryCouList

	public UserCoursesInquiryDomain selectCoursesInquiryDetail(String ciCode) throws PersistenceException {
		UserCoursesInquiryDomain uciDomain = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		uciDomain = ss.selectOne("kr.co.daitdayoung.user.coursesInquiry.coursesInquiryDetail", ciCode);

		mbh.closeHandler(ss);

		return uciDomain;
	}// selectCoursesInquiryDetail

}// class
