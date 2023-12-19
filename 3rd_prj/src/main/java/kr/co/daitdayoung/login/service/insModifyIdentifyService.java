package kr.co.daitdayoung.login.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.login.dao.insModifyIdentifyDAO;
import kr.co.daitdayoung.login.vo.modifyIdentifyVO;

@Component
public class insModifyIdentifyService {
	@Autowired
	private insModifyIdentifyDAO umiDAO;
	 @Autowired
	 private UserInfoEncryptionSerivice encrypt;
	
	public int modifyIns(modifyIdentifyVO miVO)throws PersistenceException{
		int cnt = 0;
		cnt=umiDAO.updateIns(miVO);
		
		return cnt;
	}
	public int modifyInsIdentify(modifyIdentifyVO miVO) {
		
		int id = 0;
		try {
			
		miVO.setInsTel(encrypt.oneWayEncryptData(miVO.getInsTel()));
		id=umiDAO.updateIns(miVO);
		}catch (NoSuchAlgorithmException ne) {
			ne.printStackTrace();
		}
		return id;
	}
}
