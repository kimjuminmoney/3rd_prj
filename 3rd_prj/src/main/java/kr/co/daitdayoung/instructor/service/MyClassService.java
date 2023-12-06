package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.MyClassDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;

@Component
public class MyClassService {
	
	@Autowired
	private MyClassDAO mcDAO;
	
	
	public List<CourseDomain> searchMyCourses(String insId) {
		
		
		List<CourseDomain> cdList=mcDAO.SearchMyCourses(insId);
		
		return cdList;
	}//searchMyCoursese
	
	
}//class
