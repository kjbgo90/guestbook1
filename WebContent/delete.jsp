<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	String pwd = request.getParameter("pwd");
	
	GuestBookVo vo = new GuestBookVo(no, pwd);
	
	GuestBookDao dao = GuestBookDao.getInstance();
	dao.delete(vo);
	
	response.sendRedirect("./addList.jsp");
%>