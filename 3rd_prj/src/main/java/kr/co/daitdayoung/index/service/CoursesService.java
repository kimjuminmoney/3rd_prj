package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.CoursesDAO;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.CoursesSideBarDomain;
import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.SubCategoryDomain;
import kr.co.daitdayoung.index.vo.CategoryVO;

@Component
public class CoursesService {

	@Autowired
	private CoursesDAO cDAO;

	/*
	 * public List<CoursesDomain> searchLeftCat() {// 전체 대분류
	 * 
	 * List<CoursesDomain> list = cDAO.selectLeftCat();
	 * 
	 * return list; } // searchLeftCat
	 * 
	 * public List<CoursesDomain> searchCouList() {
	 * 
	 * List<CoursesDomain> list = cDAO.selectCouList(); return list; }//
	 * searchCouList
	 * 
	 * public List<CoursesDomain> searchCouOne() {
	 * 
	 * List<CoursesDomain> list = cDAO.selectCouOne(); return list; }
	 * 
	 * public int searchCompletionStatus(String couCode) { return
	 * cDAO.selectCompletionStatus(couCode);
	 * 
	 * }
	 */
	
	public List<CoursesSideBarDomain> searchMainCat(){
		return cDAO.selectMainCat();
	}
	
	public List<SubCategoryDomain> searchSubCat(String mcCode){
		return cDAO.selectSubCat(mcCode);
	}
	
	public List<IndexColDomain> searchCourses(CategoryVO cVO){
		return cDAO.selectCourses(cVO);
	}
	
	
	
	

}
