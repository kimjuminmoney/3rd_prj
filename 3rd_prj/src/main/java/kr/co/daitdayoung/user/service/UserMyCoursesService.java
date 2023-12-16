package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.daitdayoung.user.dao.UserMyCoursesDAO;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;

@Service
public class UserMyCoursesService {
	
	@Autowired
	private UserMyCoursesDAO umcDAO;
	
	
	
	public List<UserMyCoursesDomain> searchCoursesList(String userId) {
		List<UserMyCoursesDomain> list = null;
		list = umcDAO.selectCoursesList(userId);
		return list;
	}// searchCoursesList
	
//	public List<UserMyCoursesDomain> searchCoursesExamList(List<UserMyCoursesDomain> list) {
//		List<UserMyCoursesDomain> tempList = null;
//		String crgCode = "";
//		String examStatus = "";
//		String reExam = "";
//		int examScore = 0;
//		for(int i=0; i<list.size();i++) {
//			crgCode = list.get(i).getCrgCode();
//			tempList = umcDAO.selectCoursesExamList(crgCode);
//			
//			examStatus = tempList.get(i).getExamStatus();
//			reExam = tempList.get(i).getReExam();
//			examScore = tempList.get(i).getExamScore();
//			
//			if(tempList.size() == 2) {
//				for(int j=0; j<tempList.size();j++) {
//					if("Y".equals(tempList.get(j).getExamStatus())&&
//							"Y".equals(tempList.get(j).getReExam())){
//						examStatus = tempList.get(i).getExamStatus();
//						reExam = tempList.get(i).getReExam();
//						examScore = tempList.get(i).getExamScore();
//					}
//				}
//			}
//			
//			list.get(i).setExamStatus(examStatus);
//			list.get(i).setReExam(reExam);
//			list.get(i).setExamScore(examScore);
//		}
//		return list;
//	}// searchCoursesList
//	
	public List<UserMyCoursesDomain> searchCoursesExamList(List<UserMyCoursesDomain> list) {
	    for (UserMyCoursesDomain course : list) {
	        String crgCode = course.getCrgCode();
	        List<UserMyCoursesDomain> tempList = umcDAO.selectCoursesExamList(crgCode);

	        // tempList의 크기가 2일 때만 추가 조작 수행
	        if (tempList.size() == 2) {
	            for (UserMyCoursesDomain tempCourse : tempList) {
	                if ("Y".equals(tempCourse.getExamStatus()) && "Y".equals(tempCourse.getReExam())) {
	                    // tempList에서 적절한 조건을 만족하는 course 선택
	                    course.setExamStatus(tempCourse.getExamStatus());
	                    course.setReExam(tempCourse.getReExam());
	                    course.setExamScore(tempCourse.getExamScore());
	                    course.setEpCode(tempCourse.getEpCode());
	                    break; // 이미 조건을 만족하는 course를 찾았으므로 더 이상 반복할 필요가 없음
	                }
	            }
	        } else if (tempList.size() == 1) {
	            // tempList의 크기가 1인 경우 첫 번째 course의 정보 사용
	            UserMyCoursesDomain tempCourse = tempList.get(0);
	            course.setExamStatus(tempCourse.getExamStatus());
	            course.setReExam(tempCourse.getReExam());
	            course.setExamScore(tempCourse.getExamScore());
	            course.setEpCode(tempCourse.getEpCode());
	        }
	        // tempList가 비어있는 경우, course의 상태는 그대로 유지됨
	    }
	    return list;
	}

	

	public List<UserMyCoursesDomain> searchLecturesCnt(List<UserMyCoursesDomain> list) {

		int cntTemp = 0;
		for (int i = 0; i < list.size(); i++) {
			cntTemp = umcDAO.selectLecturesCnt(list.get(i).getCouCode());
			list.get(i).setLecCnt(cntTemp);
		} // end for

		return list;
	}// searchLectures

	// searchCompletionCoursesList는 위에꺼랑 합쳤던거같다.
	public UserMyCoursesDomain searchCertificate(String userId) {
		UserMyCoursesDomain umcd = null;
		return umcd;
	}

}
