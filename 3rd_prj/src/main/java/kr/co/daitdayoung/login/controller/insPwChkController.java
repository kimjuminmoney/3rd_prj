package kr.co.daitdayoung.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.UserPwChkService;
import kr.co.daitdayoung.login.service.insPwChkService;
import kr.co.daitdayoung.login.vo.InsPwChkVO;

@Controller
public class insPwChkController {
	
	private static insPwChkController ipcc;
	
	@Autowired
	private insPwChkService ipcs;
	private insPwChkController() {
		
	}
	
	public static insPwChkController getInstance() {
		if(ipcc == null) {
			ipcc = new insPwChkController();
		}
		return ipcc;
	}

	@GetMapping("/login/insPwChk.do")
	public  String insPwChk() {
		return "login/insPwChk";
	}
	
	@PostMapping("/login/chkInsPw.do")
	public String pwChkprocess(InsPwChkVO ipcVO, Model model) {
		String pw="";
		model.addAttribute("flag", false);
		ipcVO.setPw(ipcVO.getPw());
		model.addAttribute("flag",false);
		if(pw !=null&&pw.equals(ipcVO.getPw())) {
			model.addAttribute("pw",pw);
			return "login/modifyInsPw";
		}
		return "login/insPwChk";
	}
}
