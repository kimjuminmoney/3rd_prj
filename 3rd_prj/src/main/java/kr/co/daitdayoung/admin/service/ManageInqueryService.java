package kr.co.daitdayoung.admin.service;



import java.util.List;

import kr.co.daitdayoung.admin.dao.ManageInqueryDAO;
import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;

public class ManageInqueryService {
	
	public List<ManageInqueryDomain> searchInqType(){
		List<ManageInqueryDomain> list = null;
		
		ManageInqueryDAO miDAO = new ManageInqueryDAO();
		
		list = miDAO.selectInqType();
		
		return list;
	}

	public List<ManageInqueryDomain> searchInquiry(){
		List<ManageInqueryDomain> list = null;
		
		ManageInqueryDAO miDAO = new ManageInqueryDAO();
		
		list = miDAO.selectInquiry();
		
		return list;
	}

	public ManageInqueryDomain searchDetailInq(String inqCode){
		ManageInqueryDomain detailInq = null;
		
		ManageInqueryDAO miDAO = new ManageInqueryDAO();
		
		detailInq = miDAO.selectDetailInq(inqCode);
		
		return detailInq;
	}
	
}
