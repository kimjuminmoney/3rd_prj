package kr.co.daitdayoung.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.dao.ManageUsersDAO;
import kr.co.daitdayoung.admin.domain.ManageUsersDomain;

@Component
public class ManageUsersService {

	@Autowired
	private ManageUsersDAO mud;
	
	public List<ManageUsersDomain> searchStudents() throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		list = mud.selectStudents();
		
		return list;
	}//searchStudents

	public List<ManageUsersDomain> searchInstructors() throws PersistenceException{
		List<ManageUsersDomain> list = null;
		
		list = mud.selectInstructors();
		
		return list;
	}//searchInstructors
	
}
