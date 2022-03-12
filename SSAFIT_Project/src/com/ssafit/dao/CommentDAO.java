package com.ssafit.dao;

import java.util.ArrayList;
import java.util.List;

public class CommentDAO {
	private static CommentDAO instance = new CommentDAO();
	
	private List<CommentDTO> list;
	private int no;
	private CommentDAO() {
		list = new ArrayList<CommentDTO>();
		no = 0;
	}
	
	public static CommentDAO getInstance() {
		return instance;
	}
	
	//댓글 삽입 기능
	public void insert(CommentDTO comment) {
		list.add(comment);
		no++;
		comment.setNo(no);
	}
	
	//id별로 댓글 보기
	public List<CommentDTO> SelectById(String videoid){
		List<CommentDTO> result = new ArrayList<CommentDTO>();
		if(videoid==null) {
			System.out.println("videoid없음");
			return null;
		}
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getVideoid().equals(videoid)) {
				result.add(list.get(i));
			}
		}
		if(result.size()==0) {
			return null;
		}
		return result;
	}
	
	public CommentDTO selectOne(int no) {
		for(CommentDTO c : list) {
			if( no == c.getNo() ) {
				return c;
			}
		}
		return null;
	}
	
	
	//댓글 수정하기
	public void modify(int no,String id, String writer, String comment) {
		CommentDTO origin;
		for(CommentDTO c : list) {
			if( no == c.getNo() ) {
				System.out.println("no같은거 찾았어요");
				origin = c;
				origin.setWriter(writer);
				origin.setComment(comment);
				return;
			}
		}
		
	}
	
	//댓글 삭제하기
	public void delete(int no) {
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getNo() == no) {
				list.remove(i);
				return;
			}
		}
	}
	
}
