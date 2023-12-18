package kr.co.daitdayoung.login.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.login.service.UserModifyPwService;
import kr.co.daitdayoung.login.vo.ModifyPwVO;

@Controller
public class UserModifyPwController {
	
	
	@Autowired
	private UserModifyPwService umps;
	
	private UserModifyPwController(){
		
	}
	
	@GetMapping("/login/modifyUserPw.do")
	public String modifyUserPw() {
		return "login/modifyUserPw";
	}
	
	@PostMapping("login/doModifyPw.do")
	public String modifyPw(Model model, ModifyPwVO mpVO, HttpSession session) {
		JSONObject jsonObj = new JSONObject();
		
		int cnt=0;
		
//		String uiId  = (String)session.getAttribute("uiId");
//		mpVO.setUiId(uiId);
		cnt = umps.modifyUser(mpVO);
		jsonObj.put("cnt", cnt);
		
		return "login/modifyupwSueccess";
	}

}
