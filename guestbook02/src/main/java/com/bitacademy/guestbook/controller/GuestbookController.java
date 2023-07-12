package com.bitacademy.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;

public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 엔코딩
		
		String actionName = request.getParameter("a"); 
		//(request)요청객체 속의 파라메터 a의 값을 가져옴 
		
		if("add".equals(actionName)) {
			System.out.println("add");
			
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			// vo객체에 받아온 값 저장
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			//vo객체를 dao를 통해 insert
			GuestbookDao dao = new GuestbookDao();
			dao.insert(vo);
			//redirect
			response.sendRedirect("/guestbook02/gb");
			
		} else if("deleteform".equals(actionName)) {
			// deleteform.jsp 로 연장해=forward해 주기
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		} else if("delete".equals(actionName)) {
			String no = request.getParameter("no");
			String password = request.getParameter("password");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(Long.parseLong(no));
			vo.setPassword(password);
			
			GuestbookDao dao = new GuestbookDao();
			dao.delete(vo);
			
			response.sendRedirect("/guestbook02/gb");
		} else { // default = list
			GuestbookDao dao = new GuestbookDao();
			List<GuestbookVo> list = dao.findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
