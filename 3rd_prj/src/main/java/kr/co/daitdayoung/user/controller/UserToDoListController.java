package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.user.domain.UserToDoDomain;
import kr.co.daitdayoung.user.service.UserToDoListService;
@Controller
public class UserToDoListController {
	@Autowired
	private UserToDoListService utdls;
	
	@GetMapping("/user/toDoList3.do")
	public String userToDoList3() {
		return "user/toDoList/toDoList3";
	}
	
	
	@GetMapping("/user/toDoList.do")
	public String userToDoList(HttpSession session, Model model) {
		//String id = (String)session.getAttribute("userId");
		String id = "ui_test";
		List<UserToDoDomain> list = utdls.searchCourseRegistration(id);
		
		model.addAttribute("toDoList",list);
		
		
		return "user/toDoList/toDoList";
	}

}
