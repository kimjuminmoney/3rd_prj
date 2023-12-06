package kr.co.daitdayoung.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.admin.domain.ManageCouInqueryDomain;
import kr.co.daitdayoung.admin.service.ManageCouInqueryService;

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

	//강좌문의 상세
	@GetMapping("/admin/admin_couinquery/detailCouInquery.do")
	public String detailCouInquery() {
		
		return "admin/admin_couinquery/detailCouInquery";
	}

}
