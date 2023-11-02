package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.BoardDAO;
import com.demo.domain.BoardVO;
import com.demo.domain.ContentView;

@Service
public class BoardService {

	
	@Autowired
	private BoardDAO boardDAO;
	
	// 게시글 전체 목록
	public List<BoardVO> boardList(int info_idx){
		return boardDAO.boardList(info_idx);
	}
	
	// 새 글 작성
	public void boardWrite(BoardVO writeBean) {
		boardDAO.boardWrite(writeBean);
	}
	// 카테고리 이름 
	public String categoryName(int info_idx) {
		return boardDAO.categoryName(info_idx);
	}
	
	// 글 상세보기 
	public ContentView getContentInfo(int board_idx) {
		return boardDAO.getContentInfo(board_idx);
	}
}
