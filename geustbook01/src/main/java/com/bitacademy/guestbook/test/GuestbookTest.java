package com.bitacademy.guestbook.test;

import java.util.Calendar;
import java.util.List;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;

public class GuestbookTest {

	public static void main(String[] args) {
		GuestbookDao dao = new GuestbookDao();
		GuestbookVo vo = new GuestbookVo();
		
		Calendar cal = Calendar.getInstance();
		System.out.println(cal);
//		vo.setName("이준오");
//		vo.setPassword("asdf");
//		vo.setMessage("테스트입니다.");
//		vo.setRegDate("2021-01-27");
//		
//		dao.insert(vo);
//		testFind();
		
		
	}
	private static void testFind() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println("[" + vo.getNo() + "] 이름: " + vo.getName() 
			+ ", 비번: " + vo.getPassword() + ", 내용: " + vo.getMessage() + ", 날짜: " 
					+ vo.getRegDate());
		}
		
	}
}
