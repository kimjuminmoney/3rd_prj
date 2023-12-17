package kr.co.daitdayoung.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.dao.ManageCouInqueryDAO;
import kr.co.daitdayoung.admin.domain.ManageCouInqueryDomain;

@Component
public class ManageCouInqueryService {

	@Autowired
	private ManageCouInqueryDAO mcDAO;
	
	public List<ManageCouInqueryDomain> searchCiType() throws PersistenceException{
		List<ManageCouInqueryDomain> list = null;
		
		list = mcDAO.selectCiType();
		
		return list;
	}//searchCiType
	
	public List<ManageCouInqueryDomain> searchCouInquiry() throws PersistenceException{
		List<ManageCouInqueryDomain> list = null;
		
		list = mcDAO.selectCouInquery();
		
		return list;
	}//searchCouInquiry
	
	public List<ManageCouInqueryDomain> searchCouInquiry2(String citCode) throws PersistenceException{
		List<ManageCouInqueryDomain> list = null;
		
		list = mcDAO.selectCouInquery2(citCode);
		
		return list;
	}//searchCouInquiry
	
	public ManageCouInqueryDomain searchDetailCi(String ciCode) throws PersistenceException{
		ManageCouInqueryDomain detailCi = mcDAO.selectDetailCi(ciCode);
		
		return detailCi;
	}//searchDetailCi
	
}//class
