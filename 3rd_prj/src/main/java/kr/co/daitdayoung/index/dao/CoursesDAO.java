package kr.co.daitdayoung.index.dao;


import java.util.List;



import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.CoursesSideBarDomain;
import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.SubCategoryDomain;
import kr.co.daitdayoung.index.vo.CategoryVO;

@Component
public class CoursesDAO {
	
	 @Autowired
	 private MyBatisHandler mbh;

		/*
		 * public List<CoursesDomain> selectLeftCat() {
		 * 
		 * mbh = MyBatisHandler.getInstance();
		 * 
		 * SqlSession ss = mbh.getMyBatisHandler(false);
		 * 
		 * List<CoursesDomain> idList =
		 * ss.selectList("kr.co.daitdayoung.index.leftCategory");
		 * 
		 * mbh.closeHandler(ss);
		 * 
		 * return idList;
		 * 
		 * 
		 * } //selectCourses
		 * 
		 * public List<CoursesDomain> selectCouList() {
		 * 
		 * mbh = MyBatisHandler.getInstance();
		 * 
		 * SqlSession ss = mbh.getMyBatisHandler(false);
		 * 
		 * List<CoursesDomain> cdList =
		 * ss.selectList("kr.co.daitdayoung.index.CouList");
		 * 
		 * mbh.closeHandler(ss);
		 * 
		 * return cdList;
		 * 
		 * 
		 * } //selectCourses
		 * 
		 * public List<CoursesDomain> selectCouOne() {
		 * 
		 * mbh = MyBatisHandler.getInstance();
		 * 
		 * SqlSession ss = mbh.getMyBatisHandler(false);
		 * 
		 * List<CoursesDomain> cdList = ss.selectList("kr.co.daitdayoung.index.CouOne");
		 * 
		 * mbh.closeHandler(ss);
		 * 
		 * return cdList;
		 * 
		 * }
		 * 
		 * public int selectCompletionStatus(String couCode) throws
		 * PersistenceException{
		 * 
		 * mbh = MyBatisHandler.getInstance();
		 * 
		 * SqlSession ss = mbh.getMyBatisHandler(false);
		 * 
		 * int cnt= ss.selectOne("kr.co.daitdayoung.courses.complete", couCode);
		 * 
		 * mbh.closeHandler(ss);
		 * 
		 * return cnt; }
		 */
	
	public List<CoursesSideBarDomain> selectMainCat() throws PersistenceException {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CoursesSideBarDomain> list = ss.selectList("kr.co.daitdayoung.index.mainCategory");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<SubCategoryDomain> selectSubCat(String mcCode) throws PersistenceException {
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<SubCategoryDomain> list = ss.selectList("kr.co.daitdayoung.index.subCategory", mcCode);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public List<IndexColDomain> selectCourses(CategoryVO cVO) throws PersistenceException {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<IndexColDomain> list = ss.selectList("kr.co.daitdayoung.index.categoryCourses", cVO);
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public static void main(String[] args) {
		/*
		 * CoursesDAO c = new CoursesDAO();
		 * 
		 * CategoryVO cVO = new CategoryVO(); cVO.setMcCode("MC_000001");
		 * cVO.setScCode("SC_000001"); System.out.println(c.selectCourses(cVO));
		 */
	}
	
	
		
} //class
