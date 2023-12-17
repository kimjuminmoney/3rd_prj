package kr.co.daitdayoung.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.FindPwService;
import kr.co.daitdayoung.login.vo.FindPwVO;

@Controller
public class FindPwController {
	
	@Autowired
	private FindPwService fps;
	
	
	@GetMapping("/login/findPw.do")
	public String findPw() {
		return "login/findPw";
	}
	
	@PostMapping("/login/dofindPw.do")
	public String findPwProcess(FindPwVO fpVO, Model model) {
		System.out.println(fpVO);
		boolean flag = false;
		String id="";
		if("user".equals(fpVO.getType())) {
			id=fps.searchUserId(fpVO);
			flag=true;
		}
		if("ins".equals(fpVO.getType())) {
			id=fps.searchInsId(fpVO);
			flag=true;
		}
		
		if(id==null) {
			flag=true;
			return "login/findPwDetail";
					
		}
		
		if(!flag) {
			String msg="입력한 값을 다시 확인해주세요.";
			return "login/findPw";
		}
		model.addAttribute("id",id);
		model.addAttribute("flag",flag);
		
		return "login/findPwDetail";
	}
	

}
