package kr.mr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.mr.model.ImageDTO;


@Mapper // @Mapper 생략가능 
public interface ImageMapper {
		
	// 차량 등록(insert)
	public int imageInsert(ImageDTO idto);
	
	/*
	 * // 차량 전체리스트 가져오기 public List<VehicleDTO> vehicleList();
	 * 
	 * // 차량 1개의 정보 모두 가져오기(car_main용도) public VehicleDTO vehicleGetter(int cNum);
	 */


	
	
}
