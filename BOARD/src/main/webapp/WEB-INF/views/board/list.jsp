<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 
		<!-- 맨들어본 html 임포트 -->
		<!-- <link type="text/css" rel="stylesheet" href="menubar.css"></link> -->

		<!-- css style -->
		<style type="text/css">
		
			body{
				 	margin:0px;
				 	padding:0px;
				 	font-size:11px;
				 	ont-family: "맑은 고딕";
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
		</style>
		
		<script 
			src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		</script>
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
	 
	<title>게시판</title>
	
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
			</span></a><br>
			<span style="color:#132c6f; padding:20px; font-size:27px">| 한양또래튜터링 "또링"</span>
		</div>	
				
		<!-- 메뉴바 -->
		<div class="menubar" style="margin:0 auto;">
			<ul>
				<li><a href="#">또링 소개</a>
			    	<ul>
			        	<li><a href="#">또링 소개</a></li>
			            <li><a href="#">한양또래튜터링 소개</a></li>
			            <li><a href="https://ectl.hanyang.ac.kr/home" target="_blank">교수학습지원센터 바로가기</a></li>
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
			            <li><a href="https://www.hanyang.ac.kr/web/www/main-notices" target="_blank">공지사항</a></li>
			            <li><a href="#">한양또래튜터링 일정</a></li>
			            <li><a href="#">한양또래튜터링 현황 및 수상</a></li>
			            <li><a href="#">FAQ</a></li>
			        </ul>
			      </li>
			 </ul>
		</div>
		
		<!-- 본문  -->
		<div style="border:1px solid white; margin:50px 100px;padding:30px">
		<section id="container">
			<form role="form" method="get">
				<table class="table table-hover">
					<thead>
						<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>조회수</th><th>신청현황</th></tr>
					</thead>
						
					<c:forEach items="${list}" var = "list">
						<tr>
							<td><c:out value="${list.bno}" /></td>
							<td>
								<a href="/board/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.title}" /></a>
							</td>
							<td><c:out value="${list.writer}" /></td>
							<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
							<td><c:out value="${list.hit}" /></td>
							<td>n/5</td>
						</tr>
					</c:forEach>	
				</table>
				
				<div class="search row">
					<div class="col-xs-2 col-sm-2">
						<select name="searchType" class="form-control">
							<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
							<option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
							<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
							<option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
							<option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
						</select>
					</div>
					<div class="col-xs-10 col-sm-10">
						<div class="input-group">
							<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control"/>
							<span class="input-group-btn">
								<button id="searchBtn" type="button" class="btn btn-default">검색</button> 	
							</span>
						</div>
					</div>
					
					<!--  검색바  -->
					<div class="search_span">
						<span style="margin-left: 38%;">
							<select name="object">
						    	<option value="대상 선택">대상 선택</option>
						      	<option value="튜터">튜터 찾기</option>
						      	<option value="튜티">튜티 찾기</option>
						   	</select>
						</span>
						<span>
						   	<select name="type">
						    	<option value="유형">유형 선택</option>
						      	<option value="교과">교과</option>
						      	<option value="비교과">비교과</option>
						   	</select>
						</span>
						<span>
							<select name="field">
						    	<option value="분야">분야 선택</option>
						      	<option value="주전공">주전공</option>
						      	<option value="다전공">다전공</option>
						   	</select>
						</span>
						<span id="write" style="margin:0 0 0 300px;">
							<a href="/board/list">목록</a>
							<a href="/board/writeView">글 작성</a>						
						</span>
						<style>			  
						  input::-webkit-input-placeholder {color: #a8a8a8;}
						</style>	  
					</div>
					<script>
						$(function(){
							$('#searchBtn').click(function() {
								self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
							});
						});   
					</script>
				</div>
				<div class="col-md-offset-3">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
						</c:if> 
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
							<li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
							<a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
						</c:forEach>
							
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
						</c:if> 
					</ul>
				</div>
			</form>
		</section>
		</div>
		<div
			  id="kakao-talk-channel-chat-button"
			  data-channel-public-id="_xcLqmC"
			  data-title="consult"
			  data-size="small"
			  data-color="yellow"
			  data-shape="pc"
			  data-support-multiple-densities="true"
			  style="float:right;margin-right:50px;margin-top:70px;";
		></div>
	</body>
	<script>
  window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = '//developers.kakao.com/sdk/js/kakao.plusfriend.min.js';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'kakao-js-sdk');
</script>
</html>