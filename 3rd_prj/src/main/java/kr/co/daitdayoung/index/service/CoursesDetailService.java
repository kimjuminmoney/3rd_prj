package kr.co.daitdayoung.index.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.CoursesDetailDAO;
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

	public List<CoursesRegistrationDomain> searchCoursesRegistration(CoursesRegistrationVO crVO) throws PersistenceException {
		return cdDAO.selectCoursesRegistration(crVO);
	}

	public int searchCompletionCnt(String couCode) throws PersistenceException {
		return cdDAO.selectCompletionCnt(couCode);
	}

	public JSONObject addCompletion(CoursesRegistrationVO crVO) throws PersistenceException {
		int cnt = 0;
		JSONObject json = new JSONObject();
		boolean flag = false;
		cnt = cdDAO.insertCompletion(crVO);
		if (cnt == 1) {
			flag = true;
		}
		json.put("flag", json);

		return json;
	}
}
