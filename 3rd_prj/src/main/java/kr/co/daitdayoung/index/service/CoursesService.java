package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.CoursesDAO;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.NoticeDomain;

@Component
public class CoursesService {
	
	@Autowired
	private CoursesDAO cDAO;
	
	/*
	 * public List<CoursesDomain> searchMainCou () { //전체 List<CoursesDomain> list =
	 * cDAO.searchMainCou(); return list;
	 * 
	 * } //searchInquiry
	 */	

}
