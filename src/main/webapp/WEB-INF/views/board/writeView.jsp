<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<tbody>
							<tr>
								<td>
									<label for="email">email</label><input type="text" id="email" name="email" placeholder = "email" />
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
									<label for="password">password</label><input type="password" id="password" name="password" />
								</td>
							<tr>
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea rows="5"cols="40"id="content" name="content" ></textarea>
								</td>
							</tr>
							<tr>
								<td>						
									<button type="submit">작성</button>
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