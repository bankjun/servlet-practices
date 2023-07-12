package com.bitacademy.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.emillist.dao.EmaillistDao;
import com.bitacademy.emillist.vo.EmaillistVo;

public class EmailllistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String actionName = request.getParameter("a"); 
		// 이걸하면 이미 엔코딩 끝 그래서 이거보다 먼저 엔코딩 해야함
		
		if("add".equals(actionName)) {
			String firstName = request.getParameter("fn");
			String lastName = request.getParameter("ln");
			String email = request.getParameter("email");
			
			EmaillistVo vo = new EmaillistVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			
			EmaillistDao dao = new EmaillistDao();
			dao.insert(vo);
			
			response.sendRedirect("/emaillist02/el");
		}else if("form".equals(actionName)) {
			RequestDispatcher rd =request.getRequestDispatcher("/WEB-INF/views/form.jsp");
		 	rd.forward(request, response);
		}else {
			EmaillistDao dao = new EmaillistDao();
		 	List<EmaillistVo> list = dao.findAll();
		 	
		 	request.setAttribute("list", list);// vo에 저장
		 	RequestDispatcher rd =request.getRequestDispatcher("/WEB-INF/views/index.jsp");
		 	rd.forward(request, response);
		 	/* 1. request제어이동
		 	 * 2. request 연장
		 	 * 3. request dispatch
		 	 * 4. request forward
		 	 * redirect와 비교하지 마라
		 	 * */
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
