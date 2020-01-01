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
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(!fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($("form[name='writeForm'] .chk").eq(i).val() == "" || $("form[name='writeForm'] .chk").eq(i).val() == null){
					alert($("form[name='writeForm'] .chk").eq(i).attr("title"));
					return false;
				}
			}
			return true;
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
				<form name="writeForm" role="form" method="post" action="/board/write">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="email">email</label><input type="text" id="email" name="email" placeholder = "email" class="chk" title="email을 입력하세요" />
									<button type = "button" onclick="verifyEmail()">emailVerification</button>
									<script>
										function verifyEmail(){
											//alert(document.getElementById("email").value);
											  var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
											  // 검증에 사용할 정규식 변수 regExp에 저장
											  var flag = regExp.test(document.getElementById("email").value);
											  if(flag == true){
												  alert("Verified Email Format");
											  }
											  else{
												  alert("Nonverified Email Format");
											  }
										}
									</script>
								</td>
							<tr>
							<tr>
								<td>
									<label for="password">password</label><input type="password" id="password" name="password" placeholder="password" class="chk" title="비밀번호를 입력하세요" />
								</td>
							<tr>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" placeholder="title" class="chk" title="title를 입력하세요"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea rows="5"cols="40"id="content" name="content" placeholder="content" class="chk" title = "내용을 입력하세요"></textarea>
								</td>
							</tr>
							<tr>
								<td>						
									<button type="submit" class="write_btn">작성</button>
								</td>
							</tr>			
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>