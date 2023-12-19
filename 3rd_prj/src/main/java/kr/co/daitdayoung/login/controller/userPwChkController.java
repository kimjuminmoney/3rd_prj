package kr.co.daitdayoung.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.UserPwChkService;
import kr.co.daitdayoung.login.vo.UserPwChkVO;
import oracle.jdbc.proxy.annotation.Post;

@Controller
public class userPwChkController {
	private static userPwChkController upcc;
	
	@Autowired
	private UserPwChkService upcs;
	private userPwChkController() {
		
	}
	public static userPwChkController getInstance() {
		if(upcc == null) {
			upcc= new userPwChkController();
		}
		return upcc;
	}

	@GetMapping("/login/userPwChk.do")
	public  String userPwChk() {
		return "login/userPwChk";
	}
	@PostMapping("/login/chkUserPw.do")
	public String pwChkprocess(UserPwChkVO upcVO, Model model) {
		String pw="";
		model.addAttribute("flag", false);
		upcVO.setPw(upcVO.getPw());
		model.addAttribute("flag",false);
		if(pw != null && pw.equals(upcVO.getPw())) {
			model.addAttribute("pw",pw);
			return "login/userPwChk";
		}
		return "login/modifyUserPw";
	}
}
