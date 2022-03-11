package com.ssafit.dao;

public class CommentDTO {
	private String videoid;
	private String writer;
	private String comment;
	private int no;
	
	public CommentDTO() {
		
	}

	public CommentDTO(String videoid, String writer, String comment) {
		super();
		this.videoid = videoid;
		this.writer = writer;
		this.comment = comment;
	}

	public String getVideoid() {
		return videoid;
	}

	public void setVideoid(String videoid) {
		this.videoid = videoid;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	
}
