package kr.co.daitdayoung.index.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.index.dao.IndexDAO;
import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.vo.IndexVO;

@Component
public class IndexService {
	
	@Autowired
	private IndexDAO inDAO;
	
	public List<IndexDomain> searchMC() {//전체
		
		 List<IndexDomain> list = inDAO.selectMC();
		 return list;
	}
	
	public List<IndexDomain> searchBI() {//조회수 높은 이미지
		
		List<IndexDomain> list = inDAO.selectBI();
		return list;
	}
	
	public List<IndexColDomain> searchCouList(IndexVO iVO) { //하단 강의 리스트 (조회수 top 3)
		
		List<IndexColDomain> list = inDAO.selectCouList(iVO);
		return list;
	}
	
	
	public int searchCompletionStatus(String couCode) {
		return inDAO.selectCompletionStatus(couCode);
	}
	
	public int modifyVisitors() {
		return inDAO.updateVisitors();
	}


}
