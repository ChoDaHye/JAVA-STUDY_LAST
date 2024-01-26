<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글 처리
	request.setCharacterEncoding("UTF-8");
	
	String korname = request.getParameter("korname");
	// System.out.println("korname: " + korname);
	String title = request.getParameter("title");
	String content = request.getParameter("content");
%>
<%= korname %>
<%= title %>
<%= content %>