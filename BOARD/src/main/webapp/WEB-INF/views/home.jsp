<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
	<head>
		<title>Home</title>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<style type="text/css">
		
		/*로그인 화면 심볼 중앙위치*/
		img{
			display: block; 
			margin: 0px auto;
			text-align:center;
		}
		
		fieldset{
			margin:0 auto;
			text-align:center;
			position:relative;
		}
		
		button[type="submit"]{
			border:1px solid #eee;
			border-radius:20px;
			width:80px;
			height:80px;
			font-family:"나눔바른고딕",Nanum-barun-Gothic;		
		}
		
		h3{
			font-family:"나눔바른고딕",Nanum-barun-Gothic;
			color:#666;
		}
		
		button[type="submit"]:hover{
			background:gray;
			color:white;
			transition:all 0.3s;
		}
		
		button[id~="registerBtn"]{
			font-family:"나눔바른고딕",Nanum-barun-Gothic;
			font-size:0.8em;
			border:none;
			background:white;
			float:left;
			margin:20px 0 0 70px;	
		}
		
		input[type="text"]{
			margin:10px 0 10px 70px;
		}
		
		input[type="password"]{
			margin:2px 0 0 70px;
		}
		
		.button_moum>[type="button"]{
			border: 0px solid black;
			width:100px;
			height:40px;
			border-radius:10px;
			background:#eee;
			color:black;
			font-family:"나눔바른고딕",Nanum-barun-Gothic;
		}
		
		.button_moum>[type="button"]:hover{
			background:gray;
			color:white;
			transition:all 0.3s;
		}
		
		.button_moum> a>[type="button"]{
			border: 0px solid black;
			width:200px;
			height:80px;
			border-radius:10px;
			background:#eee;
			color:black;
			font-family:"나눔바른고딕",Nanum-barun-Gothic;
		}
		
		.button_moum>a>[type="button"]:hover{
			background:gray;
			color:white;
			transition:all 0.3s;
		}
		
		</style>
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#logoutBtn").on("click", function(){
				location.href="member/logout";
			})
			$("#registerBtn").on("click", function(){
				location.href="member/register";
			})
				
			$("#memberUpdateBtn").on("click", function(){
				location.href="member/memberUpdateView";
			})	
		})
	</script>
	
	<body>
	
		<div id="image">
		<br/>	<br/><br/><br/><br/><br>
			<img src="${pageContext.request.contextPath}/resources/ddoring_big_logo.png" alt="한양튜터링" width="150px" height="150px">
		</div>
	
		<fieldset style="width:500px; border:0px solid black; text-align:center;">
			<form name='homeForm' method="post" action="/member/login" align="center">
		
				<c:if test="${member == null}">
					<br><br>				
					<h3><b>또링 커뮤니티 로그인</b></h3><hr/>
					<div style="float:left; left:30px">
						<label for="userId"></label>
						<input type="text" id="userId" name="userId" placeholder="아이디"><br>
						<label for="userPass"></label>
						<input type="password" id="userPass" name="userPass"  placeholder="비밀번호"><br><br>
					</div>
					<div>
						<button type="submit">로그인</button>&nbsp;&nbsp;&nbsp;
					</div>				
					<div style="clear:both"></div>	
					<div>
						<button id="registerBtn" type="button">회원가입</button>
					</div>						
				</c:if>
				
				<c:if test="${member != null}">
					<div class="button_moum">
						<br><br>
						<p style="font-family:나눔바른고딕,Nanum-barun-Gothic; font-size:20px;">${member.userId}님 환영 합니다.</p>
						<hr>
						<button id="memberUpdateBtn" type="button">회원정보수정</button>
						<button id="logoutBtn" type="button">로그아웃</button><br><br>
						<a href="/board/list"><button id="idong" type="button">커뮤니티 이동</button></a><br />
					</div>
				</c:if>
				<c:if test="${msg == false}">
					<p style="color: red; text-align:left;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
				</c:if>
			</form>
		</fieldset>
		<br><br><br><br><br>
		<div style="margin:0 auto">
		<p style="font-size:0.8em;text-align:center;">Copyright &copy;2020.ddoring.All rights reserved.</p>
		</div>
	</body>
</html>



