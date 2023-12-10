package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.MainCategoryDomain;

public class CategoryDAO {

	public List<MainCategoryDomain> selectMainCategory(String mcCode){
		List<MainCategoryDomain> mcList=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		mcList = ss.selectList("kr.co.daitdayoung.instructor.addCourse.selectMainCategory", mcCode);
		
		return mcList;
	}
}
