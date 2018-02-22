<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String user_id = request.getParameter("user_id");

	session.setAttribute("user_id", user_id);
	
	String site = "login_result.jsp";
	RequestDispatcher dis = request.getRequestDispatcher(site);
	dis.forward(request, response);
%>