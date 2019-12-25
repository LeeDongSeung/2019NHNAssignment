<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
	</head>
	<body>
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post" action="/board/write">
					<table>
						<tr><th>번호</th><th>email</th><th>제목</th><th>내용</th><th>등록일</th><th>수정날짜</th></tr>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.bno}" /></td>
								<td><c:out value="${list.email}" /></td>
								<td>
									<a href="/board/readView?bno=${list.bno}"><c:out value="${list.title}" /></a>
								</td>
								<td><a href="/board/readView?bno=${list.bno}"><c:out value="${list.content}" /></td>
								<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd-hh-mm-ss"/></td>
								<td><fmt:formatDate value="${list.modifieddate}" pattern="yyyy-MM-dd-hh-mm-ss"/></td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>