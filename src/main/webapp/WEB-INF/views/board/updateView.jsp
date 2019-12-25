<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "/board/list";
			})
			
			$(".update_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/update");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
			
		function fn_valiChk(){
			var regForm = $("form[name='updateForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($("form[name='updateForm'] .chk").eq(i).val() == "" || $("form[name='updateForm'] .chk").eq(i).val() == null){
					alert($("form[name='updateForm'] .chk").eq(i).attr("title"));
					return true;
				}
			}
		}
		
	</script>
	
	<body>
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
				<form name="updateForm" role="form" method="post" action="/board/update">
					<input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="email">email</label><textarea rows = "1" cols = "40" id="email" name="email"><c:out value="${update.email}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="title">제목</label><input style="text-align:center; width:350px; height:50px;" type="text" id="title" name="title" value="${update.title}" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea rows="5"cols="40"id="content" name="content"><c:out value="${update.content}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="poassword">password</label><input id="password" name="password" type="password" class="chk" title="비밀번호를 입력하세요" /><c:out value="${update.password}" />
								</td>
							</tr>
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="submit" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>