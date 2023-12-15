package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.CoursesDAO;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.domain.NoticeDomain;

@Component
public class CoursesService {

	@Autowired
	private CoursesDAO cDAO;
	
	/*
	 * public List<CoursesDomain> searchLeftCat() { List<CoursesDomain> list =
	 * cDAO.selectLeftCat(); return list;
	 * 
	 * } //searchInquiry
	 * 
	 * public List<CoursesDomain> searchCouCat() { List<CoursesDomain> list =
	 * cDAO.selectCouCat(); return list; }
	 */
	 

}
