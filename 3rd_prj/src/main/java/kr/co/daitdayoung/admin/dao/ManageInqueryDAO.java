package kr.co.daitdayoung.admin.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

public class ManageInqueryDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public List<ManageInqueryDomain> selectInqType() throws PersistenceException{
		List<ManageInqueryDomain> list = null;
		
		mbh = MyBatisHandler.getInstance();
		
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
		
	}//selectInquiry

	public ManageInqueryDomain selectDetailInq(String inqCode) throws PersistenceException{
		ManageInqueryDomain detailInq = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailInq = ss.selectOne("kr.co.daitdayoung.admin.mi.selectDetailInq",inqCode);
		
		mbh.closeHandler(ss);
		
		return detailInq;
		
	}//selectDetailInq
	
	public static void main(String[] args) {
//		System.out.println(new ManageInqueryDAO().selectInquiry());
		System.out.println(new ManageInqueryDAO().selectDetailInq("1         "));
		
	}
	
}//class











