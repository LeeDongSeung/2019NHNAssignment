<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
	<body>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/board/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니가?");
				if(deleteYN == true){
					
				formObj.attr("action", "/board/delete");
				formObj.attr("method", "post");
				formObj.submit();
					
				}
			})
			// 취소
			$(".list_btn").on("click", function(){
				location.href = "/board/list";
			})
		})
	</script>
	
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="nav.jsp" %>
			</div>
			<hr />
			
			<section id="container">
				<form name="readForm" role="form" method="post">
				<!-- 이거 read는 어디서 나온거??? 2019 12 25 궁금증! -->
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
				</form>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="bno">글 번호</label><input type="text" id="bno" name="bno" value="${read.bno}"/>
								</td>
							</tr>	
							
							<tr>
								<td>
									<label for="email">email</label><input type="text" id="email" name="email" value="${read.email}" />
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" value="${read.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea rows="5" cols="40" id="content" name="content"><c:out value="${read.content}" /></textarea>
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="regdate">작성날짜</label>
									<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd-hh-mm-ss"/>					
								</td>
							</tr>	
							<tr>
								<td>
									<label for="modifieddate">수정날짜</label>
									<fmt:formatDate value="${read.modifieddate}" pattern="yyyy-MM-dd-hh-mm-ss"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
					<button type="submit" class="update_btn">수정</button>
					<button type="submit" class="delete_btn">삭제</button>
					<button type="submit" class="list_btn">목록</button>	
					</div>
			</section>
			<hr />
		</div>
	</body>
</html>