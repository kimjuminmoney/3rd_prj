package kr.co.daitdayoung.admin.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

public class ManageInqueryDAO {
	
	public List<ManageInqueryDomain> selectInqType() throws PersistenceException{
		List<ManageInqueryDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mi.selectInqType");
		
		mbh.closeHandler(ss);
		
		return list;
		
	}//selectInqType

	public List<ManageInqueryDomain> selectInquiry() throws PersistenceException{
		List<ManageInqueryDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mi.selectInquiry");
		
		mbh.closeHandler(ss);
		
		return list;
		
	}//selectInqType
	
	public static void main(String[] args) {
		System.out.println(new ManageInqueryDAO().selectInquiry());
		
	}
	
}//class











