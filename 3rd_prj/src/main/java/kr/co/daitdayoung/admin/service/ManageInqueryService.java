package kr.co.daitdayoung.admin.service;



import java.util.List;

import org.json.simple.JSONObject;

import kr.co.daitdayoung.admin.dao.ManageInqueryDAO;
import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.admin.vo.ManageInqueryVO;

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

	public List<ManageInqueryDomain> searchInquiry2(String itCode){
		List<ManageInqueryDomain> list = null;
		
		ManageInqueryDAO miDAO = new ManageInqueryDAO();
		
		list = miDAO.selectInquiry2(itCode);
		return list;
	}

	public ManageInqueryDomain searchDetailInq(String inqCode){
		ManageInqueryDomain detailInq = null;
		
		ManageInqueryDAO miDAO = new ManageInqueryDAO();
		
		detailInq = miDAO.selectDetailInq(inqCode);
		
		return detailInq;
	}
	
	public JSONObject addAnswer(ManageInqueryVO miVO) {
		JSONObject jsonObj = new JSONObject();
		
		int cnt = 0;
		
		ManageInqueryDAO miDAO = new ManageInqueryDAO();
		
		cnt=miDAO.updateInqAnswer(miVO);
		
		jsonObj.put("cnt", cnt);
		
		System.out.println(jsonObj.toJSONString());
		
		return jsonObj;
	}
	
}
