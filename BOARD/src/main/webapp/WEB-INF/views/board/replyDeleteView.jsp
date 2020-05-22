<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	
	 	<style type="text/css">
		
			body{
				 	margin:0px;
				 	padding:0px;
				 	font-size:11px;
				 	font-family: "맑은 고딕";
				}
				
			#top{
					background-color: #132c6f; 
					height:40px; 
					width: 100%;
					margin: 0 auto;
				}
				
			#logo-area{
						background-color: #ffffff;
						width: 100%;
						border: 1px solid #a8a8a8;
					}
			
			.menubar{
						border:none;
						border:0px;
						margin:0px;
						padding:0px;
						font: 67.5% "맑은 고딕";
						font-size:13px;
						font-weight:bold;
					}
			
			.menubar ul{
							background: rgb(109,109,109);
							height:50px;
							list-style:none;
							margin:0 auto;
							padding:0;
						}
				
			.menubar li{
							float:left;
							padding:0px;
						}
				
			.menubar li a{
							background: rgb(109,109,109);
							color:#cccccc;
							display:block;
							font-weight:normal;
							line-height:50px;
							margin:0px auto;
							padding:0px 25px;
							text-align:center;
							text-decoration:none;
						}
				
			.menubar li a:hover, .menubar ul li:hover a{
															background: rgb(71,71,71);
															color:#FFFFFF;
															text-decoration:none;
														}
				
			.menubar li ul{
							background: rgb(109,109,109);
							display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
							height:auto;
							padding:0px;
							margin:0px;
							border:0px;
							position:absolute;
							width:200px;
							z-index:200;
							/*top:1em;
							/*left:0;*/
						}
				
			.menubar li:hover ul{
									display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
								}
				
			.menubar li li {
								background: rgb(109,109,109);
								display:block;
								float:none;
								margin:0px;
								padding:0px;
								width:200px;
							}
				
			.menubar li:hover li a{
									background:none;
								  }
				
			.menubar li ul a{
								display:block;
								height:50px;
								font-size:12px;
								font-style:normal;
								margin:0px;
								padding:0px 10px 0px 15px;
								text-align:left;
							 }
				
			.menubar li ul a:hover, .menubar li ul li:hover a{
																background: rgb(71,71,71);
																border:0px;
																color:#ffffff;
																text-decoration:none;
															 }
				
			.menubar p{
						clear:left;
					  }
				
			/*검색창 CSS*/
			.search_span select{
								   font-size:11px;
								   font-family: "맑은 고딕";
								   width: 100px;
								   height: 28px;
								   border: 1px solid #1D2475;
								   padding: 2px;
								   margin: 10px;
								}
								
			#logout{
						text-decoration:none;
						display:block;
						color:white;
					}
					
			#lg_hi{
					text-decoration:none;
					display:block;
					color:white;				
				  }		
				
			#write>a{
						text-decoration: none;
						font-size:15px;
						font-family:"맑은 고딕";
						color:black;
						margin:10px;				
					}	
					
			table{				
				border: 20px solid white;
				border-spacing:20px;
			}
			
			th,td{
				padding:5px;
			}
			
			/*textarea style*/
			.scrollabletextbox {
								    height:300px;
								    width:500px;		   
								    font-size:100%;
								    overflow:scroll;
							   }
			
			div>p{
				font-size:15px;
				color:red;
			}
		</style>
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/board/readView?bno=${replyDelete.bno}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
			})	
		})
		
	</script>
	
	<body>
		<div id="top">
			<span style="float:left; padding-left:10px"><img src="${pageContext.request.contextPath}/resources/ddoring_logo_white.png" style="padding:5px;" 
			width="auto" height="100%" alt="Logo"></span>
			
			<!-- 회원님 안녕하세요 -->
			<div style="position:absolute;left:60px; top:12px">
			<c:if test="${member != null}">
				<p id="lg_hi">${member.userId}님 환영합니다.</p>		
			</c:if>		
			</div>
			
			<!-- 로그아웃 -->
			<div  style="position:absolute;right:40px; top:12px">
				<c:if test="${member != null}"><a href="/member/logout" id="logout" onclick="alert('로그아웃 되었습니다')">로그아웃</a></c:if>	
			</div> 
		</div>

		<div id="logo-area" style="height:70px;">
			<!-- 홈새로고침 -->
			<a href="http://localhost:8080/board/list/">
				<span style="float:left; padding-left:10px;"><img src="${pageContext.request.contextPath}/resources/HYU_logo.png" style="padding: 10px;" 
				height="100%" width="auto" alt="HYU_logo">
				</span>
			</a><br>
			<span style="color:#132c6f; padding:20px; font-size:27px">| 한양또래튜터링 "또링"</span>
		</div>	
				
		<!-- 메뉴바 -->
		<div class="menubar" style="margin:0 auto;">
			<ul>
				<li><a href="#">또링 소개</a>
			    	<ul>
			        	<li><a href="#">또링 소개</a></li>
			            <li><a href="#">한양또래튜터링 소개</a></li>
			            <li><a href="#">교수학습지원센터 바로가기</a></li>
			        </ul>
			    </li>
			    <li><a href="#" id="current">튜터링 매칭</a></li>
			    <li><a href="#">나의 튜터링</a>
			    	<ul>
			        	<li><a href="#">커뮤니티</a></li>
			            <li><a href="#">신청 현황</a></li>
			        </ul>
			    </li>
			    <li><a href="#">알림마당</a>
			    	<ul>
			            <li><a href="#">공지사항</a></li>
			            <li><a href="#">한양또래튜터링 일정</a></li>
			            <li><a href="#">한양또래튜터링 현황 및 수상</a></li>
			            <li><a href="#">FAQ</a></li>
			        </ul>
			      </li>
			 </ul>
		</div>
	
		<div id="root">
			
			<section id="container">
				<form name="updateForm" role="form" method="post" action="/board/replyDelete">
					<input type="hidden" name="bno" value="${replyDelete.bno}" readonly="readonly"/>
					<input type="hidden" id="rno" name="rno" value="${replyDelete.rno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
						
					<div style="padding:15px;">
						<p><b>삭제 하시겠습니까?</b></p>
						<button type="submit" class="delete_btn">예 삭제합니다.</button>
						<button type="button" class="cancel_btn">아니오. 삭제하지 않습니다.</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>