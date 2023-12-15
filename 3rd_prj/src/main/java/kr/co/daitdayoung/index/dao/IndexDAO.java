package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.domain.NoticeDomain;
import kr.co.daitdayoung.index.vo.IndexVO;

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
	
	public List<IndexColDomain> selectCouList(IndexVO iVO) {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<IndexColDomain> idList = ss.selectList("kr.co.daitdayoung.index.MainCouList", iVO);
		
		mbh.closeHandler(ss);
		
		return idList;
		
	}
	
	public int selectCompletionStatus(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt= ss.selectOne("kr.co.daitdayoung.index.complete", couCode);
		
		mbh.closeHandler(ss);
		
		return cnt;
		
	}
	
	
	public static void main(String[] agrs) {
//		IndexVO iVo= new IndexVO();
//		iVo.setMcCode("MC_999999");
//		iVo.setCouCode("COU_999999");
//		System.out.println(new IndexDAO().selectCouList(iVo));
		System.out.println(new IndexDAO().selectCompletionStatus("COU_999999"));
	}

} //class00
