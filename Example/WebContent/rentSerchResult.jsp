<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, connect.*"%>
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
	<form action = "reservationDelete" onsubmit="buttonClick()">
		<table>
			<tr>
				<td colspan="2" align="center"><h2>렌트 예약 정보</h2></td>
			</tr>
			<tr>
				<td>예약번호</td>
				<td><input type ="text" name="rentno" value = "${rent.getRentno()}" size ="15" readonly></td>
			</tr>
			<tr>
				<td>아이디 </td>
				<td><input type ="text" value = "${rent.getUserid()}" size ="15" readonly></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type ="text" value = "${rent.getUsername()}" size ="15" readonly></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type ="text" value = "${rent.getUsertel()}" size ="15" readonly></td>
			</tr>
			<tr>
				<td>면허번호</td>
				<td><input type ="text" value = "${rent.getUsermyun()}" size ="15" readonly></td>
			</tr>
			<tr>
				<td>렌트 가능 여부</td>
				<td><input type ="text" value = "${rent.getRentinfo()}" size ="15" readonly></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type ="submit" value = "취소하기" style="width:60px; height:20px;">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>