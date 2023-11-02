package com.demo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.domain.BoardVO;
import com.demo.domain.ContentView;

@Repository
public class BoardDAO {

	
	@Autowired
	private SqlSessionTemplate sqlTemplate;
	
	//게시글 전체 목록
	public List<BoardVO> boardList(int info_idx){
		return sqlTemplate.selectList("board.boardList",info_idx);
	}
	
	// 새 글 작성
	public void boardWrite(BoardVO boardWrtie) {
		sqlTemplate.insert("board.boardWrtie", boardWrtie);
	}
	// 카테고리 이름 
	public String categoryName(int info_idx) {
		return sqlTemplate.selectOne("board.getCategoryName", info_idx);
	}
	
	//게시글 상세 보기
	public ContentView getContentInfo(int board_idx) {
		return sqlTemplate.selectOne("board.getContentView", board_idx);
	}
}
