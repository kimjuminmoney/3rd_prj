package kr.co.daitdayoung.login.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody 
	@PostMapping("ins_join_chk.do")
	public String insJoinComplete(InsJoinVO ijVO) {
		
		JSONObject json = ijs.chkInfo(ijVO);
		return json.toJSONString();
	}
	
	@PostMapping("/login/doIJoin.do")
	public String joinIns(InsJoinVO ijVO) {
		System.out.println(ijVO);
		ijs.addIns(ijVO);
		return "login/joinSuccess";
		
	}
	
}
