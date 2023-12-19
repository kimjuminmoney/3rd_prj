package kr.co.daitdayoung.login.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.InsModifyPwService;
import kr.co.daitdayoung.login.vo.ModifyPwVO;

@Controller
public class insModifyPwController {
	
	@Autowired
	private InsModifyPwService imps;
	
	private insModifyPwController() {
		
	}

	@GetMapping("/login/modifyInsPw.do")
	public  String modifyInsPw() {
		return "login/modifyInsPw";
	}
	
	@PostMapping("login/doModifyInsPw.do")
	public String modifyInsPw(Model model , ModifyPwVO mpVO , HttpSession session) {
		JSONObject jsonObj = new JSONObject();
		
		int cnt=0;
		
//		String insId = (String)session.getAttribute("insId");
//		mpVO.setInsId(insId);
		cnt=imps.modifyInsPw(mpVO);
		jsonObj.put("cnt", cnt);
		
		return  "login/modifyipwSueccess";
	}
}
