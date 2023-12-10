package kr.co.daitdayoung.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.admin.domain.ManageInqueryDomain;
import kr.co.daitdayoung.admin.service.ManageInqueryService;
import kr.co.daitdayoung.admin.vo.ManageInqueryVO;


@Controller
public class ManageInquiryController {
	
	@GetMapping("/admin/admin_inquery/manageInquery.do")
	public String manageInquery(Model model) {
		
		ManageInqueryService miService = new ManageInqueryService();
		
		List<ManageInqueryDomain> inqTypeList = miService.searchInqType();
		model.addAttribute("inqTypeList",inqTypeList);

		List<ManageInqueryDomain> inquiryList = miService.searchInquiry();
		model.addAttribute("inquiryList",inquiryList);
		
		return "admin/admin_inquery/manageInquery";
	}

	//일반문의 상세
	@GetMapping("/admin/admin_inquery/detailInquery.do")
	public String detailInquery(Model model, String inqCode, HttpServletRequest request) {
		
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
		System.out.println(detailInq.getInqCode());
		
		return "admin/admin_inquery/detailInquery";
	}
	
}
