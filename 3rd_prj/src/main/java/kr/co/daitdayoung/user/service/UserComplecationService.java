package kr.co.daitdayoung.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.user.dao.UserComplecationDAO;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Component
public class UserComplecationService {
	
	@Autowired
	private UserComplecationDAO ucDAO;
	
	public int modifyCompletionStatus(UserCoursesVO ucVO) {
		int progress = ucVO.getRateCnt();
		int enrollRate = ucVO.getEnrollRate();
		int lecCnt = ucVO.getLecCnt();
		int cnt = 0;
		if (progress != 0 && ( (double) progress / lecCnt ) * 100 >= enrollRate) {
			cnt = ucDAO.updateCompletion(ucVO.getCrgCode());
		}
		return cnt;
	}
	
	
}
