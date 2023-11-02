package com.demo.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.domain.BoardVO;
import com.demo.domain.LoginUser;
import com.demo.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@Resource(name = "sessionUser" )
	private LoginUser sessionUser;
	
	@GetMapping("/list")
	public String getlist(@RequestParam("info_idx")int info_idx, Model model) {
		model.addAttribute("info_idx", info_idx);
		model.addAttribute("list", boardService.boardList(info_idx));
		model.addAttribute("category", boardService.categoryName(info_idx));
		return "board/list";
	}
	
	//글 상세 보기
	@GetMapping("/view")
	public String getView(@RequestParam("board_idx")int board_idx,
						  @RequestParam("info_idx")int info_idx, Model model) {
		model.addAttribute("content", boardService.getContentInfo(board_idx));
		model.addAttribute("info_idx",info_idx);
		model.addAttribute("sessionUser", sessionUser);
		return "board/view";
	}
	
	// 글 작성 
	@GetMapping("/write")
	public String getWrite( @ModelAttribute("writeBean") BoardVO writeBean) {
		return "board/write";
	}
	// 글 작성 처리
	@PostMapping("write_pro")
	public String write_pro(@Valid @ModelAttribute("writeBean") BoardVO writeBean,BindingResult result,
			Model model) {
		if(result.hasErrors()) {
			return "board/write";
		}
		
		boardService.boardWrite(writeBean);
		model.addAttribute("info_idx",writeBean.getInfo_idx());
		return "board/write_success";
	}
	
	
	
	@GetMapping("/modify")
	public String getModify() {
		return "board/modify";
	}
	
	@GetMapping("/delete")
	public String getDelete() {
		return "board/delete";
	}
	
	
}
