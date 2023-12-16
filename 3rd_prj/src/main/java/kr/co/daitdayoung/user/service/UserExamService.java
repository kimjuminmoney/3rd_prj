package kr.co.daitdayoung.user.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.dao.UserExamDAO;
import kr.co.daitdayoung.user.domain.UserAnswerDomain;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;
import kr.co.daitdayoung.user.vo.UserAnswerVO;
import kr.co.daitdayoung.user.vo.UserExamScoreVO;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Component
public class UserExamService {

	@Autowired
	private UserExamDAO ueDAO;
	
	public int modifyExamParticipation(UserExamVO ucVO) {
		return ueDAO.updateExamParticipation(ucVO);
	}
	
	public int addReExamParticipation(UserExamVO ucVO) {
		return ueDAO.insertReExamParticipation(ucVO);
	}
	
public String searchEpCode(UserExamVO ueVO) throws PersistenceException {
		return ueDAO.selectEpCode(ueVO);
	}
	

	public List<UserQuestionsDomain> searchQuestionList(String couCode) {

		return ueDAO.selectQuestionList(couCode);
	}// searchCoursesInfo
	
	public JSONObject searchQuestion(String queCode) {
		JSONObject json = new JSONObject();
		UserQuestionsDomain uceDomain = ueDAO.selectQuestionDetail(queCode);
		
		json.put("content", uceDomain.getQueContent());
		json.put("que1", uceDomain.getQue1());
		json.put("que2", uceDomain.getQue2());
		json.put("que3", uceDomain.getQue3());
		json.put("que4", uceDomain.getQue4());
		
		return json;
	}//searchQuestion
	
	//정답 일치 유무 확인후 List<VO> 반환
	public List<UserAnswerVO> searchCorrectList(UserAnswerVO uaVOtemp){
		List<UserCoursesExamDomain> uceList = ueDAO.selectCorrectList(uaVOtemp.getCouCode());
		List<UserAnswerVO> uaList = new ArrayList<UserAnswerVO>();
		for(int i = 0; i < uceList.size() ; i++) {
			UserAnswerVO uaVO = new UserAnswerVO();
			uaVO.setUiId(uaVOtemp.getUiId());
			uaVO.setEpCode(uaVOtemp.getEpCode());
			uaVO.setCrgCode(uaVOtemp.getCrgCode());
			uaVO.setCouCode(uaVOtemp.getCouCode());
			uaVO.setInsId(uaVOtemp.getInsId());
			uaVO.setExamCode(uaVOtemp.getExamCode());
			
			//queCode코드가 같으면
			if(uceList.get(i).getQueCode().equals(uaVOtemp.getQueCodeArr()[i])) {
				uaVO.setQueCode(uceList.get(i).getQueCode());
				uaVO.setAsSelected(uaVOtemp.getAsSelectedArr()[i]);
				
				//correct(정답)과 답안지(asSelected)를 비교하여 값 넣기
				if(uceList.get(i).getCorrect() == (uaVOtemp.getAsSelectedArr()[i])) {
					uaVO.setAsStatus("Y");
				} else {
					uaVO.setAsStatus("N");
				}//end else
			}//end if
			uaList.add(uaVO);
		}//end for
		
		return uaList;
	}
	
	public int addAnswer(List<UserAnswerVO> uaList) throws PersistenceException {
		int cnt = 0;
		for(UserAnswerVO uaVO : uaList) {
			cnt = ueDAO.insertAnswer(uaVO);
		}
		return cnt;
	}// insertAnswer
	
	public int modifyExamScore(UserExamScoreVO uesVO) {
		int cnt = 0;
		
		cnt = ueDAO.updateExamScore(uesVO);
		return	cnt;
	}
	
	public List<UserAnswerDomain> seachAnswerList(String epCode) throws PersistenceException {
		return ueDAO.selectAnswerList(epCode);
	}// selectQuestionList

	public JSONObject searchAnswerDetail(UserAnswerVO uaVO) {
		JSONObject json = new JSONObject();
		UserAnswerDomain uaDomain = ueDAO.selectAnswerDetail(uaVO);
		
		json.put("content", uaDomain.getQueContent());
		json.put("que1", uaDomain.getQue1());
		json.put("que2", uaDomain.getQue2());
		json.put("que3", uaDomain.getQue3());
		json.put("que4", uaDomain.getQue4());
		
		
		return json;
	}//searchQuestion

}// class
