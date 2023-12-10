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

	public static void main(String[] args) {
		/*
		 * List<UserCoursesInquiryDomain> list = new
		 * UserCoursesInquiryDAO().selectCoursesInquiryList("ui_test");
		 * for(UserCoursesInquiryDomain umcd : list) { System.out.println(umcd); }
		 */
		// System.out.println(new UserMyCoursesDAO().selectLecturesCnt("COU_999999"));
		// System.out.println(new
		// UserCoursesInquiryDAO().selectCoursesInquiryDetail("998 "));
		// System.out.println(new UserCoursesInquiryDAO().selectCoursesInquiryType());
		// System.out.println(new
		// UserCoursesInquiryDAO().selectCoursesInquiryCouList("ui_test"));
		/*
		 * UserCoursesInquirVO uciVO = new UserCoursesInquirVO();
		 * uciVO.setCiCode("CI_888888"); uciVO.setCiContent("인설트 테스트");
		 * uciVO.setCitCode("CIT_000001"); uciVO.setCiTitle("인설트 타이틀");
		 * uciVO.setInsId("ins_test"); uciVO.setUiId("ui_test");
		 * uciVO.setCouCode("COU_999999"); System.out.println(new
		 * UserCoursesInquiryDAO().insertInquiry(uciVO));
		 */
	}
}// class
