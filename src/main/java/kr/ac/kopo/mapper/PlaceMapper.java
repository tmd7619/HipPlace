package kr.ac.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.dto.PlaceVO;

@Mapper
public interface PlaceMapper {
	// 힙플레이스 목록 조회
	public List<PlaceVO> selectPlaceList();
	// 힙플레이스 조회
	public List<PlaceVO> selectPlace(int placeId);
	// 힙플레이스 등록
	public void insertPlace(PlaceVO place);
}
