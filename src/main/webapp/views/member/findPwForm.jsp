<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">


.find-password input[type="submit"] {
	color:black;
	background-color: #C01616;
	width: 350px;
}

.find-password input[type="email"] {
	color:black;
	width: 350px;
}


</style>

<link rel="stylesheet" type="text/css" href="../../css/member.css">

</head>
<body>

	<!-- 비밀번호 찾기 -->
	<div class="container">
		<div class="find find-password">
<!-- 		<h1> 비밀번호찾기 <h1>  -->
		
		<h2> 비밀번호 초기화 </h2>
		<h3> 가입하신 이메일을 적어주세요 </h3>
		<form action="/project_semi/views/member/findPwResult.do" method="post">
			<div class= form-group>
				<input type="email" name="id" placeholder="아이디(이메일)" required="required" ><p><p>
				<input type="submit" value="비밀번호 초기화" ><br>
				<a class = "btn" href="/project_semi/views/member/loginForm.do">이전</a> 
			</div>
		</form>

		</div>
	</div>
	
</body>
</html>