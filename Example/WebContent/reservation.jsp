<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,connect.rentDAO"%>
<%int no = rentDAO.MaxCnt() + 1;%>
<html>
<head>
	<style>
		form {
			position:absolute;
			top : 30%;
		}
		tr:nth-child(1) > td {
			border-top-left-radius : 10px;
			border-top-right-radius : 10px;
		}
		tr:last-child > td {
			border-bottom-left-radius : 10px;
			border-bottom-right-radius : 10px;
		}
		td { border: 1px solid #444444;
		padding : 10px;  }
		
		input[type="submit"] { border-radius : 10px / 10px; }
		input[type="reset"] { border-radius : 10px / 10px; }
		</style>
		
		<script type="text/javascript">
			function resetChk() {
				var result = confirm("이전 화면으로 되돌아 가시겠습니까? \n (예 : 되돌아가기 / 아니요 : 내용 지우기 )");
				if (result) {
					alert("이전 화면으로 되돌아갑니다.")
					history.go(-1);
				} else {
					alert("내용을 지웁니다.");
				}
			}
		</script>
</head>
<body>
	<form action = "reservationinsert" name = "fm" onsubmit = "reservationCheck()">
		<table width="700px" height="500px">
			<tr>
				<td colspan="2" align="center"><h3>렌트 예약하기</h3></td>
			</tr>
			<tr>
				<td>예약번호</td>
				<td><input type ="text" name ="rentno" value="<%=no %>" size ="15" readonly></td> 
			</tr>
			<tr>
				<td>아이디 </td>
				<td><input type ="text" name ="userid" size ="15"></td>
			</tr>
			<tr>
				<td>고객성명</td>
				<td><input type ="text" name ="username" size ="15"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<select name = "usertel1">
						<option>010</option>
						<option>011</option>
					</select>
					- <input type ="text" name ="usertel2" size ="5">
					- <input type ="text" name ="usertel3" size ="5">
				</td>
			</tr>
			<tr>
				<td>면허번호</td>
				<td>
					<input type ="text" name ="usermyun1" size ="5" placeholder = "직접입력">
					- <input type ="text" name ="usermyun2" size ="5" maxlength = "2">
					- <input type ="text" name ="usermyun3" size ="5" maxlength = "6">
					- <input type ="text" name ="usermyun4" size ="5" maxlength = "2">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type = "submit" value="등록">
				<input type = "reset" value="지우기" onclick="resetChk()">
			</tr>
		</table>
	</form>
</body>
</html>