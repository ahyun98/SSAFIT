package com.ssafit.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class VideoDAO {
	private static VideoDAO instance = new VideoDAO();
	private VideoDAO() {
		list = new ArrayList<VideoDTO>();
		this.insert(new VideoDTO("gMaB-fG4u4g", 120, "전신 다이어트 최고의 운동 [칼소폭 찐 핵핵매운맛]", "전신", "ThankyouBUBU", "https://www.youtube.com/embed/gMaB-fG4u4g"));
		this.insert(new VideoDTO("swRNeYw1JkY", 80, "하루 15분! 전신 칼로리 불태우는 다이어트 운동", "전신", "ThankyouBUBU", "https://www.youtube.com/embed/swRNeYw1JkY"));
		this.insert(new VideoDTO("54tTYO-vU2E", 1720, "상체 다이어트 최고의 운동 BEST [팔뚝살/겨드랑이살/등살/가슴어깨라인]", "상체", "ThankyouBUBU", "https://www.youtube.com/embed/54tTYO-vU2E"));
		this.insert(new VideoDTO("QqqZH3j_vH0", 1220, "상체비만 다이어트 최고의 운동 [상체 핵매운맛]", "상체", "ThankyouBUBU", "https://www.youtube.com/embed/QqqZH3j_vH0"));
		this.insert(new VideoDTO("tzN6ypk6Sps", 11, "하체운동이 중요한 이유? 이것만 보고 따라하자 ! [하체운동 교과서]", "하체", "김강민", "https://www.youtube.com/embed/tzN6ypk6Sps"));
		this.insert(new VideoDTO("u5OgcZdNbMo", 8000, "저는 하체 식주의자 입니다", "하체", "GYM종국", "https://www.youtube.com/embed/u5OgcZdNbMo"));
		this.insert(new VideoDTO("PjGcOP-TQPE", 320, "11자복근 복부 최고의 운동 [복근 핵매운맛]", "복부", "ThankyouBUBU", "https://www.youtube.com/embed/PjGcOP-TQPE"));
		this.insert(new VideoDTO("7TLk7pscICk", 610, "(Sub)누워서하는 5분 복부운동!! 효과보장! (매일 2주만 해보세요!)", "복부", "SomiFit", "https://www.youtube.com/embed/7TLk7pscICk"));
	}
	public static VideoDAO getInstance() {
		return instance;
	}
	
	//관리할 리스트
	private List<VideoDTO> list;
	
	//삽입
	public void insert(VideoDTO video) {
		list.add(video);
	}
	
	//select기능(모든 동영상 선별)
	public List<VideoDTO> selectAll(){
		VideoDAO.getInstance().sortViewNum();
		return list;
	}
	// selectOne(id로 동영상 찾기)
	public VideoDTO selectOne(String id) {
		for(VideoDTO video : list) {
			if( id.equals(video.getId()) )
				return video;
		}
		return null;
	}
	// selectPart (운동부위별 영상 선별)
	public List<VideoDTO> selectPart(String part) {
		List<VideoDTO> list_part = new ArrayList<VideoDTO>();
		for(VideoDTO video : list) {
			if( part.equals(video.getPart()) )
				list_part.add(video);
		}
		return list_part;
	}
	// sortViewNum (조회수별 영상 정렬)
	// sortViewNum (조회수별 영상 정렬)
    public List<VideoDTO> sortViewNum() {
        Comparator<VideoDTO> compareByViewNum = (VideoDTO v1, VideoDTO v2) -> ((Integer) v1.getViewNum()).compareTo( (Integer) v2.getViewNum() );
        Collections.sort(list, compareByViewNum.reversed());
        return list;
    }
}