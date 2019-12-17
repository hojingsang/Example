<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 테이블의 테두리 사이의 간격을 없애고 싶을땐, border-collapse -->

    <% request.setAttribute("target","Home");
    	RequestDispatcher dispatcher = request.getRequestDispatcher("templat.jsp");
    	dispatcher.forward(request,response);
    %>