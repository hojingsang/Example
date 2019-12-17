<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , service.ServiceDTO" %>
<% request.setCharacterEncoding("utf-8"); %>

<style>
		table {
			position:absolute;
			top : 18%;
			border-top: 1px solid #444444;
    		border-collapse: collapse;
		}
		tr:nth-child(1) > th {
			border-top-left-radius : 10px;
			border-top-right-radius : 10px;
		}
		tr:last-child > td {
			border-bottom-left-radius : 10px;
			border-bottom-right-radius : 10px;
		}
		tr:nth-child(4) > td {
			border-bottom : 1px solid white;
		}
		th,td { border: 1px solid #444444;
		padding : 10px;  }
		
		</style>

<table width="700px" height="700px">
	<tr>
		<th><h4>게시글 읽기</h4></th>
	</tr>
	<tr>
		<td>[제목] ${service.text} </td>
	</tr>
	<tr>
		<td>[작성자] ${service.nickname}
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		[작성일시] ${service.regdate} </td>
	</tr>
	<tr>
		<td>게시글 내용</td>
	</tr>
	<tr>
		<td style="height:450px;"><pre>${service.content} </pre></td>
	</tr>
	<tr>
		<td rowspan="10" align="center" style="height:30px;">
			<a href = 'service-update-input?sno=${service.sno}'>[수정]</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = 'service-delete?sno=${service.sno}'>[삭제]</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href='Service'>[목록으로]</a>
		</td>
	</tr>
</table>