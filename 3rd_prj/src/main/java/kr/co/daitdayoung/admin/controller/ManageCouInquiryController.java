package kr.co.daitdayoung.admin.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.admin.domain.ManageCouInqueryDomain;
import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.admin.service.ManageCouInqueryService;
import kr.co.daitdayoung.admin.service.ManageInqueryService;

@Controller
public class ManageCouInquiryController {
	
	@Autowired
	private ManageCouInqueryService mciService;
	
	@GetMapping("/admin/admin_couinquery/manageCouInquery.do")
	public String manageCouInquery(Model model) {
		
		List<ManageCouInqueryDomain> couInquiryList = mciService.searchCouInquiry();
		List<ManageCouInqueryDomain> ciTypeList = mciService.searchCiType();
		
		model.addAttribute("ciTypeList",ciTypeList);
		model.addAttribute("couInquiryList",couInquiryList);
		
		return "admin/admin_couinquery/manageCouInquery";
	}
	
	@ResponseBody
	@GetMapping("/admin/admin_couinquery/showCouInq.do")
	public String processCouInquery(Model model, String citCode) {
		
		JSONObject json=null;
		JSONArray jsonArr=new JSONArray();
		JSONObject jsonObj = new JSONObject();
		
		List<ManageCouInqueryDomain> couInqList = mciService.searchCouInquiry2(citCode);
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		for(ManageCouInqueryDomain cid : couInqList) {
			json=new JSONObject();	
			json.put("citName",cid.getCitName());
			json.put("ciCode",cid.getCiCode());
			json.put("ciTitle",cid.getCiTitle());
			json.put("couName",cid.getCouName());
			json.put("uiId",cid.getUiId());
			json.put("ciDate", sdf.format(cid.getCiDate()));
			json.put("ciAnswer",cid.getCiAnswer());
			jsonArr.add(json);
		}
		jsonObj.put("jsonArr", jsonArr);
			System.out.println(jsonObj.toJSONString());
		return jsonObj.toJSONString();
	}

	//강좌문의 상세
	@GetMapping("/admin/admin_couinquery/detailCouInquery.do")
	public String detailCouInquery(Model model, String ciCode, HttpServletRequest request) {
		
		ciCode = request.getParameter("ciCode");
		ManageCouInqueryDomain detailCi = mciService.searchDetailCi(ciCode);
		
		model.addAttribute("citName", detailCi.getCitName());
		model.addAttribute("ciTitle", detailCi.getCiTitle());
		model.addAttribute("uiName", detailCi.getUiName());
		model.addAttribute("couName", detailCi.getCouName());
		model.addAttribute("ciContent", detailCi.getCiContent());
		model.addAttribute("ciAnswer", detailCi.getCiAnswer());
		model.addAttribute("insName", detailCi.getInsName());
		model.addAttribute("ciDate", detailCi.getCiDate());
		model.addAttribute("ciAnswerdate", detailCi.getCiAnswerdate());
		
		return "admin/admin_couinquery/detailCouInquery";
	}

}
