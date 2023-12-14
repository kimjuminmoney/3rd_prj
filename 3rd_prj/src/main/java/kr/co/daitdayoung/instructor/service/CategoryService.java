package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CategoryDAO;
import kr.co.daitdayoung.instructor.domain.MainCategoryDomain;
import kr.co.daitdayoung.instructor.domain.SubCategoryDomain;

@Component
public class CategoryService {
	
	@Autowired
	private CategoryDAO cDAO;
	
	public List<MainCategoryDomain> searchMainCategory(){
		List<MainCategoryDomain> mcList=null;
		
		mcList = cDAO.selectMainCategory();
		
		return mcList;
	}//maincategory

	public JSONObject searchSubCategory(String mcCode){
		List<SubCategoryDomain> scList=null;
		scList = cDAO.selectSubCategory(mcCode);
		
		JSONObject jsonObj=new JSONObject();
		JSONArray jsonArr=new JSONArray();
		JSONObject json=null;
		
		for(SubCategoryDomain sc : scList)	{
			json=new JSONObject();
			
			json.put("mcCode", sc.getMcCode());
			json.put("scCode", sc.getScCode());
			json.put("scName", sc.getScName());
			
			jsonArr.add(json);
		}
			jsonObj.put("data", jsonArr);
			jsonObj.put("dataSize", jsonArr.size());
			
		return jsonObj;
	}//Subcategory
	
}
