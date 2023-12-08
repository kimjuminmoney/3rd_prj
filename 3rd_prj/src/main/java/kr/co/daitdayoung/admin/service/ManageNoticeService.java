package kr.co.daitdayoung.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.dao.ManageNoticeDAO;
import kr.co.daitdayoung.admin.domain.ManageNoticeDomain;

@Component
public class ManageNoticeService {

	@Autowired
	private ManageNoticeDAO mnd;
	
	public List<ManageNoticeDomain> searchNotice() throws PersistenceException {
		List<ManageNoticeDomain> list = null;
		
		list = mnd.selectNotice();
		
		return list;
	}//searchNotice

	public List<ManageNoticeDomain> searchCouNotice() throws PersistenceException {
		List<ManageNoticeDomain> list = null;
		
		list = mnd.selectCouNotice();
		
		return list;
	}//searchNotice
	
}//class
