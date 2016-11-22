package com.ssc.service;

import java.util.List;

import com.ssc.model.Car;

public interface CarService {

	/**
	 * 차 상세보기
	 */
	public Car selectCar(Car car) throws Exception;

	/**
	 * 차 리스트 보기
	 */
	public List<Car> selectCarList(Car car) throws Exception;

	/**
	 * 차 추가
	 */
	public void insertCar(Car car) throws Exception;

	/**
	 * 차 수정
	 */
	public void updateCar(Car car) throws Exception;

	/**
	 * 차 삭제
	 */
	public void deleteCar(Car car) throws Exception;

}
