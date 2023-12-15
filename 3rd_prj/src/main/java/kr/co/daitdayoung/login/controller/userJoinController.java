package kr.co.daitdayoung.login.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.daitdayoung.login.service.userJoinService;
import kr.co.daitdayoung.login.vo.UserJoinVO;

@Controller
public class userJoinController {
	
	private static userJoinController ujc;
	
	@Autowired
	private userJoinService ujs;
	
	private userJoinController() {
		
	}
	
	public static userJoinController getInstance() {
		if(ujc ==null) {
			ujc = new userJoinController();
		}
		return ujc;
	}
	

	@GetMapping("/login/userJoin.do")
	public String userJoin() {
		return "login/userJoin";
	}
	
	@PostMapping("/login/doUJoin.do")
	public String joinUser(UserJoinVO ujVO, Model model) {
		System.out.println( ujVO );
		ujs.addUser(ujVO);
		model.addAttribute("id",ujVO.getUiId());
		return "login/joinSuccess";
	}

	
}
