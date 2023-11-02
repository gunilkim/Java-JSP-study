<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.*, java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="board.BoardVO"/>
<jsp:useBean id="dao" class="board.BoardDao"/>
<jsp:setProperty name="vo" property="*"/>
<%	
	dao.update(vo);
	pageContext.setAttribute("vo", vo);
	//response.sendRedirect(request.getContextPath() + "/board/list.jsp");
%>
<c:redirect url="${pageContext.request.contextPath}/boardDetail.jsp?num=${vo.num}"/>
