package com.naver.erp;

import java.util.List;
import java.util.Map;

public interface StoreDAO {

	List<Map> getStoreInfo();
	int insertStore(Map map);
	int insertBasket(Map map);
}
