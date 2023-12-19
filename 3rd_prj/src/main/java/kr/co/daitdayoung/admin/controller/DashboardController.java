package kr.co.daitdayoung.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.admin.domain.DashboardDomain;
import kr.co.daitdayoung.admin.service.DashboardService;

@Controller
public class DashboardController {
	
	@Autowired
	private DashboardService dbs;
	
	@GetMapping("/admin/admin_dashboard/dashboard.do")
	public String dashboard(Model model, HttpSession session) {
		String adminId = (String)session.getAttribute("adminId");
		
		int recJoin = dbs.searchRecJoin();
		int coursesCnt = dbs.searchCoursesCnt();
		int compCnt = dbs.searchCompCnt();
		int totVis = dbs.searchTotalVisitor();
		List<Integer> dayVis = dbs.searchDailyVisitor();
		List<Integer> dayVisDate = dbs.searchDailyVisDate();
		List<DashboardDomain> studentCou = dbs.searchStudentCou();
		
		List<String> couNameList = new ArrayList<String>();
		for(DashboardDomain dd:studentCou) {
			couNameList.add(dd.getCouName());
		}
		
		List<Integer> stuCnt = new ArrayList<Integer>();
		for(DashboardDomain dd:studentCou) {
			stuCnt.add(dd.getRegistCnt());
		}
		
		model.addAttribute("recJoin", recJoin);
		model.addAttribute("coursesCnt", coursesCnt);
		model.addAttribute("compCnt", compCnt);
		model.addAttribute("totVis", totVis);
		model.addAttribute("dayVis", dayVis);
		model.addAttribute("dayVisDate", dayVisDate);
		model.addAttribute("couNameList", couNameList);
		model.addAttribute("stuCnt", stuCnt);
		
		return "admin/admin_dashboard/dashboard";
	}
	
}
