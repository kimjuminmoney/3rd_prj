package kr.co.daitdayoung.index.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.CoursesDetailDAO;
import kr.co.daitdayoung.index.domain.CodeDomain;
import kr.co.daitdayoung.index.domain.CoursesDetailDomain;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.index.domain.CoursesRegistrationDomain;
import kr.co.daitdayoung.index.vo.CoursesRegistrationVO;

@Component
public class CoursesDetailService {

	@Autowired
	private CoursesDetailDAO cdDAO;

	public CoursesDetailDomain searchCoursesDetail(String couCode) {
		return cdDAO.selectCoursesDetail(couCode);
	} // searchCoursesDetail

	public List<CoursesLectureDomain> searchLectureList(String couCode) {
		return cdDAO.selectLectureList(couCode);
	} // searchLectureList

	public CoursesRegistrationDomain searchCoursesRegistration(CoursesRegistrationVO crVO) {
		return cdDAO.selectCoursesRegistration(crVO);
	}

	public int searchCompletionCnt(String couCode) {
		return cdDAO.selectCompletionCnt(couCode);
	}

	public CodeDomain addCompletion(CoursesRegistrationVO crVO) {
		if (crVO.getCompletionStatus() != null) {
			crVO.setCrCount(crVO.getCrCount() + 1);
		}
		CodeDomain cDomain = cdDAO.insertCompletion(crVO);
		if (cDomain.getCnt() == 1) {
			cDomain.setFlag(true);
		}
		return cDomain;
	}

	public int addCoursesRecodr(CoursesRegistrationVO crVO) {
		return cdDAO.insertCoursesRecodr(crVO);
	}
	
	public int addExamParticipationInsert(CoursesRegistrationVO crVO) {
		return cdDAO.insertExamParticipationInsert(crVO);
	}
	
	
	
}
