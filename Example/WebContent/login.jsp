<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인</title>
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
			
			input[type="submit"] { border-radius : 10px / 10px; background-color:white; }
			input[type="button"] { border-radius : 10px / 10px; background-color:white; }
		</style>
	<script>
		function oncheck() {
			if(!fm.id.value) {
				alert('아이디를 입력하세요.');
				fm.id.focus;
				return false;
			}
			if(!fm.password.value) {
				alert('비밀번호를 입력하세요.');
				fm.password.focus;
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<form action = "UserLoginChk" name="fm" method="post" onsubmit = "return oncheck()">
		<table>
			<tr>
				<td colspan="2" align="center"><h3>로그인 화면</h3></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type = "text" name="id" size = "10"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name="password" size = "10"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value ="로그인">
				<a href = "Privacy.jsp"><input type = "button" value = "회원가입"></a></td>
			</tr>	
		</table>
	</form>
</body>
</html>