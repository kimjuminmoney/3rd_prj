package kr.co.daitdayoung.instructor.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.insAddCourseDAO;
import kr.co.daitdayoung.instructor.vo.CourseVO;
import kr.co.daitdayoung.instructor.vo.LectureVO;

@Component
public class insAddCourseService {

	@Autowired
	private insAddCourseDAO iacDAO;
	
	public int addCourse(CourseVO cVO) {
		int cCnt=0;
		int lCnt=0;
		
		int cnt=0;
		
		List<LectureVO> lvoList=new ArrayList<LectureVO>();
		LectureVO lVO=null;
		
		for(String lName: cVO.getContentList()) {
			lVO=new LectureVO();
			lVO.setInsId(cVO.getInsId());
			lVO.setLecName(lName);
			System.out.println(lVO);
			lvoList.add(lVO);
		}
		
		cCnt=iacDAO.insertCourse(cVO);
		lCnt=iacDAO.insertLectures(lvoList);
		
		if(cCnt !=0 && lCnt != 0) {
			cnt=1;
		}
		
		return cnt;
	}
	
}
