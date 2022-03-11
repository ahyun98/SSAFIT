package com.ssafit.dao;

public class VideoDTO {
	private String id;
	private int viewNum;
	private String title;
	private String part;
	private String channelName;
	private String url;
	public VideoDTO() {}
	public VideoDTO(String id, int viewNum, String title, String part, String channelName, String url) {
		super();
		this.id = id;
		this.viewNum = viewNum;
		this.title = title;
		this.part = part;
		this.channelName = channelName;
		this.url = url;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getViewNum() {
		return viewNum;
	}
	public void setViewNum(int viewNum) {
		this.viewNum = viewNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "VideoDTO [id=" + id + ", viewNum=" + viewNum + ", title=" + title + ", part=" + part + ", channelName=" + channelName + ", url=" + url + "]";
	}
	
}
