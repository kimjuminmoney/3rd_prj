package kr.co.daitdayoung.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class userSelectJoinController {

	@GetMapping("/user/selectJoin.do")
	public String selectJoin() {
		return "user/join/selectJoin";
	}
}
