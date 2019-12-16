<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
		form {
			position:absolute;
			top:40%; left:45%;
		}
	</style>
</head>
<body>
	<form action = "reservationSerch">
		<table>
			<tr>
				<th><h2>렌트 예약 확인</h2></th>
			</tr>
			<tr>
				<td>예약번호</td>
				<td><input type = "text" name ="rentno" size="10"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type ="submit" value = "조회 " style="width:60; height:30;">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>