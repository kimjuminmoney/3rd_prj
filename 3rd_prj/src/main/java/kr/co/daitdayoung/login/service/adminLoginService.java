package kr.co.daitdayoung.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.login.dao.adminLoginDAO;
import kr.co.daitdayoung.login.vo.AdminLoginVO;

@Component
public class adminLoginService {

	
	@Autowired
	private adminLoginDAO alDAO;
	
	public String searchAdminLogin(AdminLoginVO alVO) {
		String adminId = alDAO.selectAdminLogin(alVO);
		return adminId;
	}
	
}
