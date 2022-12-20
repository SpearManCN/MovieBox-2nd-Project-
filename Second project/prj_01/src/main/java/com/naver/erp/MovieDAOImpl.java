package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAOImpl implements MovieDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Map> getMovieInfo(){
		List<Map> MovieInfo = this.sqlSession.selectList(
				"com.naver.erp.MovieDAO.getMovieInfo"
				);
		
		return MovieInfo;	
		
		
	}
	
	public List<Map> getMovieInfo2(int no){
		List<Map> MovieInfo = this.sqlSession.selectList(
				"com.naver.erp.MovieDAO.getMovieInfo"
				,no
				);
		
		return MovieInfo;	
		
		
	}
	
	
	
	
	
	
	
	
}
