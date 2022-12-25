package com.naver.erp;

import java.util.List;
import java.util.Map;

public interface ServiceFormDAO {
	List<Map> getServiceList();
	int insertWrite(Map map);
	List<Map> getMyList(String str);
	List<Map> getDetail(String str);
	List<Map> getMyDetail(String str);
}
