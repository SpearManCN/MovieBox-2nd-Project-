package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceFormDAOImpl implements ServiceFormDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Map> getServiceList(){
		List<Map> serviceList = this.sqlSession.selectList(
				"com.naver.erp.ServiceFormDAO.getServiceList"
				
				);
		return serviceList;
		
	}
	
	public int insertWrite(Map map) {
		int write = this.sqlSession.insert(
				"com.naver.erp.ServiceFormDAO.insertWrite"
				,map
				);
		return write;
	}
	
	public List<Map> getMyList(String str){
		List<Map> myList = this.sqlSession.selectList(
				"com.naver.erp.ServiceFormDAO.getMyList"
				,str
				);
		return myList;
	}
	
	public List<Map> getDetail(String str){
		List<Map> detail = this.sqlSession.selectList(
				"com.naver.erp.ServiceFormDAO.getDetail"
				,str
				);
		return detail;
	}
	
	public List<Map> getMyDetail(String str){
		List<Map> myDetail = this.sqlSession.selectList(
				"com.naver.erp.ServiceFormDAO.getMyDetail"
				,str
				);
		return myDetail;
	}
	
	
}