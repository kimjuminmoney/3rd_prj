package kr.co.daitdayoung.index.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.service.IndexService;
import kr.co.daitdayoung.index.vo.IndexVO;



@Controller
public class IndexController {
	
	@Autowired
	private IndexService ins;
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(HttpSession session, Model model) {
		
		List<IndexDomain> MCList = ins.searchMC();
		List<IndexDomain> BIList = ins.searchBI();
		List<IndexColDomain> tempList = null; 
		IndexVO iVO = new IndexVO();
		
		for(int i=0;i<MCList.size();i++) {
			iVO.setMcCode(MCList.get(i).getMcCode());
			iVO.setCouCode(MCList.get(i).getCouCode());
			List<IndexColDomain> icList = ins.searchCouList(iVO);
			MCList.get(i).setList(icList);
		}
		for(int i=0;i<1;i++) {
			String couCode = MCList.get(3).getList().get(i).getCouCode();
			int CompletionCnt =	ins.searchCompletionStatus(couCode);
			MCList.get(3).getList().get(i).setCompletionCnt(CompletionCnt);
			
		}
		
		model.addAttribute("BIList", BIList);
		model.addAttribute("MCList", MCList);
		model.addAttribute("tempList",tempList);
		String usId = (String)(session.getAttribute("usID"));
		String insId = (String)(session.getAttribute("insID"));
		
		return "/index/index";
	}
	
	
	
	
}
