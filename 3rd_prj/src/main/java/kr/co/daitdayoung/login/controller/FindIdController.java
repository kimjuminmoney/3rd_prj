package kr.co.daitdayoung.login.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.daitdayoung.login.service.FindIdService;
import kr.co.daitdayoung.login.vo.FindIdVO;
import kr.co.daitdayoung.login.vo.InsJoinVO;
import kr.co.daitdayoung.login.vo.LoginVO;
import kr.co.daitdayoung.login.vo.UserJoinVO;

	@Controller
	public class FindIdController {
		
		@Autowired
		private FindIdService fs;
		
	@GetMapping("/login/findId.do")
	public String FindIdForm() {
		return "login/findId";
	}
	
	@PostMapping("/login/dofindId.do")
	public String findIdProcess(FindIdVO fiVO, Model model) {
		System.out.println(fiVO);
		Boolean flag = false;
		String id= "";
		if("user".equals(fiVO.getType())) {
			id=fs.searchUserId(fiVO);
			flag = true;
			
		}
		
		if("ins".equals(fiVO.getType())) {
			id=fs.searchInsId(fiVO);
			flag = false;
		}
		if(id == null) {
			flag = true;
			System.out.println("아디없음");
			return "login/findIdDetail";
		}
		
		if(!flag) {
			String msg = "입력한 값을 다시 확인해주세요.";
			return "login/findId";
		}
		model.addAttribute("id",id);
		model.addAttribute("flag",flag);
		
		return "login/findIdDetail";
	
	}



	}