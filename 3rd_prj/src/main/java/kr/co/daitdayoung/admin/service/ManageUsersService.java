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
	
	public ManageUsersDomain searchDetailStu1(String uiId) throws PersistenceException{
		ManageUsersDomain detailStu=mud.selectDetailStu1(uiId);
		
		return detailStu;
	}//searchDetailStu1
	
	public List<ManageUsersDomain> searchDetailStu2(String uiID) throws PersistenceException{
		List<ManageUsersDomain> list = mud.selectDetailStu2(uiID);
		
		return list;
	}//searchDetailStu1
	
	public ManageUsersDomain searchDetailIns1(String insId) throws PersistenceException{
		ManageUsersDomain detailIns=mud.selectDetailIns1(insId);
		
		return detailIns;
	}//searchDetailIns1
	
	public List<ManageUsersDomain> searchDetailIns2(String uiID) throws PersistenceException{
		List<ManageUsersDomain> list = mud.selectDetailIns2(uiID);
		
		return list;
	}//searchDetailStu1
	
}
