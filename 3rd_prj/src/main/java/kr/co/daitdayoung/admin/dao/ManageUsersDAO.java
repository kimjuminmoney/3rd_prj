package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageUsersDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class ManageUsersDAO {

	public List<ManageUsersDomain> selectStudents() throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mu.selectStudents");
		
		mbh.closeHandler(ss);
		
		return list;
	}
	
}
