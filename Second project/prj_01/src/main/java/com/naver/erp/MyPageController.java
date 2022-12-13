package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {

	@RequestMapping( value="/myPageHome.do")
	public ModelAndView myPageHome() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("myPageHome.jsp");
		return mav;
		
	}
	@RequestMapping( value="/myPageBookList.do")
	public ModelAndView myPageBookList() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("myPageBookList.jsp");
		return mav;
		
	}
	@RequestMapping( value="/myPageStoreList.do")
	public ModelAndView myPageStoreList() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("myPageStoreList.jsp");
		return mav;
		
	}
	@RequestMapping( value="/myPageBasket.do")
	public ModelAndView myPageBasket() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("myPageBasket.jsp");
		return mav;
		
	}
	@RequestMapping( value="/myPagePwChange.do")
	public ModelAndView myPagePwChange() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("myPagePwChange.jsp");
		return mav;
		
	}
}
