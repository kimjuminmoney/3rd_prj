package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.CoursesDAO;
import kr.co.daitdayoung.index.domain.CoursesDomain;

@Component
public class CoursesService {

	@Autowired
	private CoursesDAO cDAO;
	
	public List<CoursesDomain> searchLeftCat( ) {//전체 대분류
		
		 List<CoursesDomain> list = cDAO.selectLeftCat();
		 return list;
	} //searchLeftCat

	 

}
