package kr.co.daitdayoung.index.controller;


import java.nio.file.spi.FileSystemProvider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.dao.IndexDAO;
import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.domain.NoticeDomain;
import kr.co.daitdayoung.index.service.IndexService;
import kr.co.daitdayoung.index.service.InquiryService;
import kr.co.daitdayoung.index.service.NoticeService;



@Controller
public class IndexController {
	
	@Autowired
	private IndexService ins;
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(Model model) {
		
		List<IndexDomain> MCList = ins.searchMC();
		List<IndexDomain> BIList = ins.searchBI();
		List<IndexColDomain> tempList = null; 
		for(IndexDomain iDomain : MCList) {
			iDomain.setList(ins.searchCouList(iDomain.getMcCode()));
		}
		model.addAttribute("BIList", BIList);
		model.addAttribute("MCList", MCList);
		
		return "/index/index";
	}
	
	
	
	
}
