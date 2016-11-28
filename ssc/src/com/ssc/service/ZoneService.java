package com.ssc.service;

import java.util.List;

import com.ssc.model.Zone;

public interface ZoneService {

	/**
	 * 존 상세보기
	 */
	public Zone selectZone(Zone zone) throws Exception;

	/**
	 * 존 리스트 보기
	 */
	public List<Zone> selectZoneList(Zone zone) throws Exception;

	/**
	 * 존 추가
	 */
	public void insertZone(Zone zone) throws Exception;

	/**
	 * 존 수정
	 */
	public void updateZone(Zone zone) throws Exception;

	/**
	 * 존 삭제
	 */
	public void deleteZone(Zone zone) throws Exception;

}
