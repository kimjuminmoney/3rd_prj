package kr.co.daitdayoung.login.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.insModifyIdentifyService;
import kr.co.daitdayoung.login.vo.modifyIdentifyVO;

@Controller
public class insModifyIdentifyController {
	
	
	 @Autowired private insModifyIdentifyService imis;
	 
	
	private insModifyIdentifyController() {
		
	}

	@GetMapping("/login/modifyIdentify.do")
	public  String modifyIdentify() {
		return "login/modifyIdentify";
	}
	
	@PostMapping("login/doModifyId.do")
	public String modifyId(Model model , modifyIdentifyVO miVO, HttpSession session) {
		JSONObject jsonObj = new JSONObject();
		
		int cnt=0;
		
		cnt=imis.modifyInsIdentify(miVO);
		jsonObj.put("cnt",cnt);
		return "login/modifyIdentify";
	}
}
