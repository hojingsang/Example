<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<style>
	input[type="button"] { border-radius : 10px / 10px; }
</style>

<body>
<% 
	if(request.getAttribute("result").equals("false")) {
%>
	로그인 정보가 정확하지 않습니다.
	<br>
	<input type = "button" value = "돌아가기" onclick="button_click()" style="width:70px; height:30px;">
	<script type="text/javascript">
		function button_click() {
			history.go(-1);	
		}
	</script>
<% } %>
</body>