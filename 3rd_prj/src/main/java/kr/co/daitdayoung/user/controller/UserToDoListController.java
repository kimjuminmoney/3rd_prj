package kr.co.daitdayoung.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class UserToDoListController {
	
	@GetMapping("/user/toDoList.do")
	public String userToDoList() {
		return "user/toDoList/toDoList";
	}
	@GetMapping("/user/toDoList2.do")
	public String userToDoList2() {
		return "user/toDoList/toDoList2";
	}

}
