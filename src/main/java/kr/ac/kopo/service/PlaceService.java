package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dto.PlaceVO;

public interface PlaceService {
	// 힙플레이스 목록 조회
	public List<PlaceVO> searchPlaceList();
	// 힙플레이스 조회
	public List<PlaceVO> searchPlace(int placeId);
	// 힙플레이스 등록
	public void registerPlace(PlaceVO place);
}
