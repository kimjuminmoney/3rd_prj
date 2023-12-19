package kr.co.daitdayoung.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.insJoinService;
import kr.co.daitdayoung.login.vo.InsJoinVO;

@Controller
public class insJoinController {
	
	private static insJoinController ijc;
	
	@Autowired
	private insJoinService ijs;
	
	private insJoinController() {
		
	}
	
	public static insJoinController getInstance() {
		if(ijc == null) {
			ijc = new insJoinController();
		}
		return ijc;
	}
	

	@GetMapping("/login/insJoin.do")
	public  String insJoin() {
		return "login/insJoin";
	}
	
	
	@PostMapping("/login/doIJoin.do")
	public String joinIns(InsJoinVO ijVO, Model model) {
		System.out.println(ijVO);
		ijs.addIns(ijVO);
		model.addAttribute("id",ijVO.getInsId());
		return "login/joinSuccess";
		
	}
	
}
