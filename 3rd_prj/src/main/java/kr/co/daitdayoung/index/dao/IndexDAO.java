package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.controller.IndexColDomain;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.domain.NoticeDomain;

@Component
public class IndexDAO {
	

	@Autowired
	private MyBatisHandler mbh;
	
	public List<IndexDomain> selectMC() { //DAO에서 가져오기 때문에 select (Service는 search)
			
			mbh = MyBatisHandler.getInstance();
			
			SqlSession ss = mbh.getMyBatisHandler(false);
			
			List<IndexDomain> idList = ss.selectList("kr.co.daitdayoung.index.allMainCou");
			
			mbh.closeHandler(ss);
			
			return idList;
		
		
	} //selectCourses
	
	public List<IndexDomain> selectBI() {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<IndexDomain> idList = ss.selectList("kr.co.daitdayoung.index.highBIMG");
		
		mbh.closeHandler(ss);
		
		return idList;
		
	}
	
	public List<IndexColDomain> selectCouList(String mcCode) {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<IndexColDomain> idList = ss.selectList("kr.co.daitdayoung.index.MainCouList", mcCode);
		
		mbh.closeHandler(ss);
		
		return idList;
		
	}
	
	
	public static void main(String[] agrs) {
		System.out.println(new IndexDAO().selectCouList("MC_999999"));
	}

} //class00
