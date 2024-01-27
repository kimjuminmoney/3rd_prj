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
	
	/**
	 * 내강의실 - 나의 할 일
	 */
	@GetMapping("/user/toDoList.do")
	public String userToDoList(HttpSession session, Model model) {
		String id = (String)session.getAttribute("uiId");
		List<UserToDoDomain> list = utdls.searchToDoList(id);
		list = utdls.searchToDoExamList(list);
		model.addAttribute("toDoList",list);
		
		
		return "user/toDoList/toDoList";
	}

}
