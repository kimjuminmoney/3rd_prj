package kr.co.daitdayoung.admin.controller;

import java.util.List;

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
	public String detailInquery() {
		
		return "admin/admin_inquery/detailInquery";
	}
	
}
