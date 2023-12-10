package kr.co.daitdayoung.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
