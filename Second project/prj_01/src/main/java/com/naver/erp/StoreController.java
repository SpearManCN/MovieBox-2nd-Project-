package com.naver.erp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {

	@Autowired
	private StoreDAO storeDAO;
	
	
	@RequestMapping( value="/storeForm.do")
	public ModelAndView storeForm() {
		
		
		List<Map> storeInfo = this.storeDAO.getStoreInfo();
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("storeInfo",storeInfo);
		mav.setViewName("storeForm.jsp");
		return mav;
		
	}
	
	
	@RequestMapping( 
			value="/buyStore.do" 
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
	)
	@ResponseBody
	public int buy(
			@RequestParam( value="storeNo" ) String storeNo
			,HttpSession session
	) {
		String memberNo =  String.valueOf(session.getAttribute("memNo"));
		
		String serialNo = storeNo + memberNo+"CN" + String.valueOf((int)(Math.random()*10000)) + "AR";
		
		
		Map buyInfo = new HashMap();
		buyInfo.put("storeNo", storeNo);
		buyInfo.put("memberNo", memberNo);
		buyInfo.put("serialNo", serialNo);
		int successCnt = this.storeDAO.insertStore(buyInfo);
		
		
		
		
		return successCnt;
	}	
	
	@RequestMapping( 
			value="/jjimStore.do" 
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
	)
	@ResponseBody
	public int jjim(
			@RequestParam( value="storeNo" ) String storeNo
			,HttpSession session
	) {
		String memberNo =  String.valueOf(session.getAttribute("memNo"));
		
		//String serialNo = storeNo + memberNo+"CN" + String.valueOf((int)(Math.random()*10000)) + "AR";
		
		
		Map jjimInfo = new HashMap();
		jjimInfo.put("storeNo", storeNo);
		jjimInfo.put("memberNo", memberNo);
		//buyInfo.put("serialNo", serialNo);
		int successCnt = this.storeDAO.insertBasket(jjimInfo);
		
		
		
		
		return successCnt;
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
