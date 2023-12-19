package kr.co.daitdayoung.admin.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.admin.service.ManageInqueryService;
import kr.co.daitdayoung.admin.vo.ManageInqueryVO;


@Controller
public class ManageInquiryController {
	
	@GetMapping("/admin/admin_inquery/manageInquery.do")
	public String manageInquery(Model model, HttpServletRequest request, HttpSession session) {
		
		ManageInqueryService miService = new ManageInqueryService();
		
		List<ManageInqueryDomain> inqTypeList = miService.searchInqType();
		model.addAttribute("inqTypeList",inqTypeList);

		List<ManageInqueryDomain> inquiryList = miService.searchInquiry();
		model.addAttribute("inquiryList",inquiryList);

		return "admin/admin_inquery/manageInquery";
	}

	//일반문의 상세
	@GetMapping("/admin/admin_inquery/detailInquery.do")
	public String detailInquery(Model model, String inqCode, HttpServletRequest request, HttpSession session) {
		
		ManageInqueryService miService = new ManageInqueryService();
		inqCode=request.getParameter("inqCode");

		ManageInqueryDomain detailInq = miService.searchDetailInq(inqCode);
		model.addAttribute("inqCode", detailInq.getInqCode());
		model.addAttribute("itCode", detailInq.getItCode());
		model.addAttribute("itName", detailInq.getItName());
		model.addAttribute("uiName", detailInq.getUiName());
		model.addAttribute("inqTitle", detailInq.getInqTitle());
		model.addAttribute("inqContent", detailInq.getInqContent());
		model.addAttribute("inqDate", detailInq.getInqDate());
		
		ManageInqueryDomain detailInq2 = miService.searchDetailInq2(inqCode);
		
		if(detailInq2 == null) {
			model.addAttribute("detailInq2", "");
			model.addAttribute("inqAnswer", "");
			model.addAttribute("inqAnswerdate", "");
			model.addAttribute("adminName", "");
		}else {
			model.addAttribute("detailInq2", detailInq2);
			model.addAttribute("inqAnswer", detailInq2.getInqAnswer());
			model.addAttribute("inqAnswerdate", detailInq2.getInqAnswerdate());
			model.addAttribute("adminName", detailInq2.getAdminName());
		}
		
		return "admin/admin_inquery/detailInquery";
	}
	
	@ResponseBody
	@GetMapping("/admin/admin_inquery/addInquery.do")
	public String modifyInqueryProcess(Model model, ManageInqueryVO miVO, HttpSession session) {
		String adminId = (String)session.getAttribute("adminId");
		miVO.setAdminId(adminId);
		JSONObject jsonObj = new ManageInqueryService().addAnswer(miVO);
		
		return jsonObj.toJSONString();
	}

	@ResponseBody
	@GetMapping("/admin/admin_inquery/showInquery.do")
	public String processInquery(Model model, String itCode) {
		
		ManageInqueryService miService = new ManageInqueryService();
		JSONObject json=null;
		JSONArray jsonArr=new JSONArray();
		JSONObject jsonObj = new JSONObject();
		
		List<ManageInqueryDomain> inquiryList2 = miService.searchInquiry2(itCode);
		
		System.out.println(inquiryList2);
		 
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		for(ManageInqueryDomain mid : inquiryList2) {
			json=new JSONObject();	
			json.put("itName",mid.getItName());
			json.put("inqCode",mid.getInqCode());
			json.put("inqTitle",mid.getInqTitle());
			json.put("uiId",mid.getUiId());
			json.put("inqDate", sdf.format(mid.getInqDate()));
			json.put("inqAnswer",mid.getInqAnswer());
			jsonArr.add(json);
		}
		jsonObj.put("jsonArr", jsonArr);
			System.out.println(jsonObj.toJSONString());
		return jsonObj.toJSONString();
	}
	
}
