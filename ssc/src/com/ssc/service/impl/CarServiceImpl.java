package com.ssc.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.Logger;

import com.ssc.model.Car;
import com.ssc.service.CarService;

public class CarServiceImpl implements CarService{

	
	Logger logger;
	SqlSession sqlSession;
	
	public CarServiceImpl(SqlSession sqlSession, Logger logger) {
	    this.sqlSession = sqlSession;
	    this.logger = logger;
	}
	
	@Override
	public Car selectCar(Car car) throws Exception {
		Car result = null;		
		try{
			result = sqlSession.selectOne("CarMapper.selectCar", car);
			if(result == null){
				throw new NullPointerException();
			}
		} catch(NullPointerException e){
			throw new Exception("일치하는 차가 없습니다.");
		}catch(Exception e){
			logger.error(e.getLocalizedMessage());
			throw new Exception("차량 조회에 실패했습니다.");
		}finally{
			sqlSession.close();
		}
		
		return result;
	}

	@Override
	public List<Car> selectCarList(Car car) throws Exception {
		List<Car> result = null;
		try {
			result = sqlSession.selectList("CarMapper.selectCarList", car);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("차량 조회에 실패했습니다.");
		}
		
		return result;
	}

	@Override
	public void insertCar(Car car) throws Exception {
				
		try{
			int result = sqlSession.insert("CarMapper.insertCar", car);
			if(result == 0){
				throw new NullPointerException();
			}
		} catch(NullPointerException e){
			sqlSession.rollback();
			throw new Exception("추가된 차량이 없습니다.");
		}catch(Exception e){
			sqlSession.rollback();
			logger.error(e.getLocalizedMessage());
			throw new Exception("차량 조회에 실패했습니다.");
		}finally{
			sqlSession.commit();
		}
	}

	@Override
	public void updateCar(Car car) throws Exception {
		try{
			int result = sqlSession.update("CarMapper.updateCar", car);
			if(result == 0){
				throw new NullPointerException();
			}
		} catch(NullPointerException e){
			sqlSession.rollback();
			throw new Exception("일치하는 차량이 없습니다.");
		}catch(Exception e){
			sqlSession.rollback();
			logger.error(e.getLocalizedMessage());
			throw new Exception("차량 조회에 실패했습니다.");
		}finally{
			sqlSession.commit();
		}
	}

	@Override
	public void deleteCar(Car car) throws Exception {
		try{
			sqlSession.delete("CarMapper.deleteCar", car);	
		} catch(NullPointerException e){
			sqlSession.rollback();
			throw new Exception("일치하는 차량이 없습니다.");
		}catch(Exception e){
			sqlSession.rollback();
			logger.error(e.getLocalizedMessage());
			throw new Exception("차량 조회에 실패했습니다.");
		}finally{
			sqlSession.commit();
		}
	}

}
