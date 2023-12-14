package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.MainCategoryDomain;
import kr.co.daitdayoung.instructor.domain.SubCategoryDomain;

@Component
public class CategoryDAO {

	public List<MainCategoryDomain> selectMainCategory(){
		List<MainCategoryDomain> mcList=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		mcList = ss.selectList("kr.co.daitdayoung.instructor.addCourse.selectMainCategory");
		
		mbh.closeHandler(ss);
		
		return mcList;
	}

	public List<SubCategoryDomain> selectSubCategory(String mcCode){
		List<SubCategoryDomain> scList=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		scList = ss.selectList("kr.co.daitdayoung.instructor.addCourse.selectSubCategory",mcCode);
		
		mbh.closeHandler(ss);
		return scList;
	}
	
//	public static void main(String[] args) {
//		
//		List<MainCategoryDomain> mcList =null;
//		
//		new CategoryDAO().selectMainCategory();
//		new CategoryDAO().selectSubCategory("MC_999999");
//		
//	}
	
}
