package kr.co.daitdayoung.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.domain.ManageCouInqueryDomain;
import kr.co.daitdayoung.dao.MyBatisHandler;

@Component
public class ManageCouInqueryDAO {
	
	public List<ManageCouInqueryDomain> selectCiType() throws PersistenceException{
		List<ManageCouInqueryDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mci.selectCiType");
		
		mbh.closeHandler(ss);
		
		return list;
	}

	public List<ManageCouInqueryDomain> selectCouInquery() throws PersistenceException{
		List<ManageCouInqueryDomain> list = null;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.admin.mci.selectCouInquiry");
		
		mbh.closeHandler(ss);
		
		return list;
	}//selectCouInquery
	
	public static void main(String[] args) {
		System.out.println(new ManageCouInqueryDAO().selectCiType());
	}
	
}//class





