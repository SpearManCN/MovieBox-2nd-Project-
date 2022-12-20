package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReserveDAOImpl implements ReserveDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Map> getMovieInfo(){
		List<Map> MovieInfo = this.sqlSession.selectList(
				"com.naver.erp.ReserveDAO.getMovieInfo"
				
				);
		
		return MovieInfo;	
		
		
	}
	
	
	public List<Map> getTheater(Map infos){
		List<Map> Theater = this.sqlSession.selectList(
				"com.naver.erp.ReserveDAO.getTheater"
				,infos
				);
		
		return Theater;
		
		
	}
	
	
	public String getSeatInfo(Map info) {
		String seatInfo = this.sqlSession.selectOne(
				"com.naver.erp.ReserveDAO.getSeatInfo"
				,info
				); 
		return seatInfo;
	}
	
	
	public int insertInfo(Map info) {
		
		int infos = this.sqlSession.insert(
				"com.naver.erp.ReserveDAO.insertInfo"
		,info
		
				);
				
		
	return infos;
	
}
	
	
	public int updateInfo(Map info) {
		int infos = this.sqlSession.update(
				"com.naver.erp.ReserveDAO.updateInfo"
				,info
				);
		return infos;
		
	}
	
	public List<Map> getMovieInfos(Map info){
		List<Map> movieInfos = this.sqlSession.selectList(
				"com.naver.erp.ReserveDAO.getMovieInfos"
				,info
				);
		return movieInfos;
		
		
	}
	
	public int getMovieNo(String str) {
		int movieNo = this.sqlSession.selectOne(
				"com.naver.erp.ReserveDAO.getMovieNo"
				,str
				);
		return movieNo;
	}
	
	
	
	
}