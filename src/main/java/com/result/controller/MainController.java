package com.result.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.result.dao.UserRepo;
import com.result.entity.Students;

@Controller
public class MainController {
	@Autowired
	UserRepo ur;

	@RequestMapping("/")
	public String showForm() {
		
		return "index";																	
	}
	@RequestMapping("/admin")
	public String showUploadForm() {
		return "admim";
	}
	
//	@PostMapping("/files")
//	public void exportData(@RequestParam MultipartFile file) throws IOException {
//		System.out.println(file.getName());
//		System.out.println("files handler");
//		List<Students> convertExcelToList = Helper.convertExcelToList(file.getInputStream(),"Sheet2");
//		System.out.println("size:"+convertExcelToList.size());
//		String insertData = ur.insertData(convertExcelToList);
//		System.out.println(insertData);
//	}
	
	@RequestMapping("/Search")
	public String formHandler(@RequestParam String regno,Model m) {
		System.out.println("FormHandler");
		
		List<Students> studentByReg = ur.getStudentByReg(regno);
		
//		Students name = ur.getParticularStudent(regno);
//		System.out.println(name);
//		m.addAttribute("name",name);
		m.addAttribute("details", studentByReg);
		
		return "search";
	}
}
