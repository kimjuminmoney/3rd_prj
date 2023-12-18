package kr.co.daitdayoung.admin.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.admin.vo.ManageInqueryVO;
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

	public List<ManageInqueryDomain> selectInquiry2(String itCode) throws PersistenceException{
		List<ManageInqueryDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mi.selectInquiry2",itCode);
		
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
	
	public ManageInqueryDomain selectDetailInq2(String inqCode) throws PersistenceException{
		ManageInqueryDomain detailInq = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		detailInq = ss.selectOne("kr.co.daitdayoung.admin.mi.selectDetailInq2",inqCode);
		
		mbh.closeHandler(ss);
		
		return detailInq;
		
	}//selectDetailInq

	public int updateInqAnswer(ManageInqueryVO miVO) throws PersistenceException{
		int cnt=0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		cnt=ss.update("kr.co.daitdayoung.admin.mi.updateInqAnswer", miVO);
		
		if(cnt==1) {
			ss.commit();
		}//end if
		
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public static void main(String[] args) {
//		System.out.println(new ManageInqueryDAO().selectInquiry());
		System.out.println(new ManageInqueryDAO().selectDetailInq2("INQ_999999"));
//		ManageInqueryVO miVO = new ManageInqueryVO();
//		miVO.setAdminId("admin");
//		miVO.setInqAnswer("수정했습니다222");
//		miVO.setInqCode("INQ_999998");
		//new ManageInqueryDAO().updateInqAnswer(miVO);
		//System.out.println(new ManageInqueryDAO().selectDetailInq("INQ_999989"));
		
		
	}
	
}//class











