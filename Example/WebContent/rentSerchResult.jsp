<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, connect.*"%>
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
		
		</style>
		
		<script type="text/javascript">
			function buttonClick() {
				var result = confirm("예약을 취소 하시겠습니까? \n (예 : 취소하기 / 아니요 : 메인으로 )");
				if (result) {
					alert("예약을 취소 합니다.")
				} else {
					alert("메인으로 돌아갑니다.");
					location.href = "index.jsp";
				}
			}
		</script>
</head>
<body>
	<form action = "reservationDelete" onsubmit="buttonClick()">
		<table width="700px" height="500px">
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
					<input type ="submit" value = "취소하기" style="width:70px; height:20px;">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>