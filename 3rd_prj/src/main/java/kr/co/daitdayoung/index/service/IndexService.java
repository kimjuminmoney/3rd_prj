package kr.co.daitdayoung.index.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.IndexDAO;
import kr.co.daitdayoung.index.domain.IndexDomain;

@Component
public class IndexService {
	
	@Autowired
	private IndexDAO inDAO;
	
	public List<IndexDomain> searchMC() {//전체
		
		 List<IndexDomain> list = inDAO.selectMC();
		 return list;
	}
	
	public List<IndexDomain> searchBI() {
		
		List<IndexDomain> list = inDAO.selectBI();
		return list;
	}
	
	public List<IndexDomain> searchCouList() {
		
		List<IndexDomain> list = inDAO.selectCouList();
		return list;
	}


}
