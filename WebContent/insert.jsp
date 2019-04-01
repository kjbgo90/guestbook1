<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");
	
	GuestBookVo vo = new GuestBookVo(name, pwd, content);
	
	GuestBookDao dao = GuestBookDao.getInstance();
	dao.insert(vo);
	
	response.sendRedirect("./addList.jsp");
%>
