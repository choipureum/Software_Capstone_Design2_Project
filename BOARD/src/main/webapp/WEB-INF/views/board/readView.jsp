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
				  	
			label{
				font-size:15px !important;			
			}
			
			li>p{
				font-size:13px !important;
			}
		</style>
		
	</head>
	
	<script type="text/javascript">
		
		$(document).ready(function(){			
			var formObj = $("form[name='readForm']");
			
			//작성자와 로그인멤버 아이디가 같을경우 수정,삭제 발생
			//만약 작성자와 로그인멤버 아이디가 같을경우 신청하기 버튼 발생
 			if ("${member.userId}"=="${read.writer}") {	
 					//일단걸림												
	 				$("#ud").attr("style","display:inline-block");
	 				$("#dl").attr("style","display:inline-block");	
	 				$("#admit").attr("style","display:inline-block");					
				}			
			else {			
					$("#ud").attr("style","display:none");
					$("#dl").attr("style","display:none");	
					$("#admit").attr("style","display:none");
							
 				}
				
			
			
			
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/board/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니까?");
				if(deleteYN == true){
					
				formObj.attr("action", "/board/delete");
				formObj.attr("method", "post");
				formObj.submit();					
				}
			})
			
			// 목록
			$(".list_btn").on("click", function(){
				
				location.href = "/board/list?page=${scri.page}"
						      +"&perPageNum=${scri.perPageNum}"
						      +"&searchType=${scri.searchType}&keyword=${scri.keyword}";
			})
			
			$(".replyWriteBtn").on("click", function(){
				var formObj = $("form[name='replyForm']");
				formObj.attr("action", "/board/replyWrite");
				formObj.submit();
			});
			
			//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				location.href = "/board/replyUpdateView?bno=${read.bno}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&rno="+$(this).attr("data-rno");
			});
			
			//댓글 삭제 View
// 			$(".replyDeleteBtn").on("click", function(){
				
// 				var deleteYN = confirm("삭제하시겠습니까?");
				
// 				var formObj = $("form[name='updateForm']");
// 				//캔슬(아니오일때)
// 				if(deleteYN ==false){
					
// 				}
// 				else{
// 					formObj.attr("action", "/board/replyDelete");
// 					formObj.attr("method", "post");
// 					formObj.submit();		
// 					}
// 			});
			
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/board/replyDeleteView?bno=${read.bno}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&rno="+$(this).attr("data-rno");
			});
	
			
		});
		function fn_fileDown(fileNo){
			var formObj = $("form[name='readForm']");
			$("#FILE_NO").attr("value", fileNo);
			formObj.attr("action", "/board/fileDown");
			formObj.submit();
		}

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
			            <li><a href="#">공지사항</a></li>
			            <li><a href="#">한양또래튜터링 일정</a></li>
			            <li><a href="#">한양또래튜터링 현황 및 수상</a></li>
			            <li><a href="#">FAQ</a></li>
			        </ul>
			      </li>
			 </ul>
		</div>
		
		<div class="container">
			
			<section id="container">
				<!-- var formobj : readForm -->
				<form name="readForm" role="form" method="post">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<input type="hidden" id="FILE_NO" name="FILE_NO" value=""> 
				</form>
				
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<input type="text" id="title" name="title" class="form-control" value="${read.title}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 control-label">내용</label>
					<textarea id="content" name="content" class="form-control" readonly="readonly"><c:out value="${read.content}" /></textarea>
				</div>
				<div class="form-group">
					<label for="writer" class="col-sm-2 control-label">작성자</label>
					<input type="text" id="writer" name="writer" class="form-control" value="${read.writer}"  readonly="readonly"/>
				</div>
				<div class="form-group">
					<label for="regdate" class="col-sm-2 control-label">작성날짜</label>
					<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd" />	
				</div>
				<hr>
				<span style="font-size:17px"><b>파일 목록</b></span><br>
				<div class="form-group" style="border: 1px solid #dbdbdb; font-size:15px">
					<c:forEach var="file" items="${file}">
						<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
					</c:forEach>
				</div>
				<hr>
				<div>
					<button type="button" class="update_btn btn btn-warning" id="ud" >수정</button>
					<button type="button" class="delete_btn btn btn-danger"  id="dl">삭제</button>
					<button type="button" class="list_btn btn btn-primary">목록</button>	
				</div>
				
				<!-- 댓글 -->
				<div id="reply">
					<ol class="replyList">
						<c:forEach items="${replyList}" var="replyList">
							<li>
								<p>
								작성자 : ${replyList.writer}<br />
								작성 날짜 :  <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd" />
								</p>
								  
								<p>${replyList.content}</p>
								<div>
									<button type="button" class="replyUpdateBtn btn btn-warning"data-rno="${replyList.rno}" >수정</button>
									<button type="button" class="replyDeleteBtn btn btn-danger"  data-rno="${replyList.rno}">삭제</button>
									<button type="button" id="admit" >신청 승인</button>
								</div>
							</li>
						</c:forEach>   
					</ol>
				</div>
				
				<form name="replyForm" method="post" class="form-horizontal">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
				
					<div class="form-group">
						<label for="writer" class="col-sm-2 control-label">댓글 작성자</label>
						<div class="col-sm-10">
							<input type="text" id="writer" name="writer" class="form-control" value="${member.userId}" readonly="readonly"/>
						</div>
					</div>
					
					<div class="form-group">
						<label for="content" class="col-sm-2 control-label">댓글 내용</label>
						<div class="col-sm-10">
							<input type="text" id="content" name="content" class="form-control" placeholder="튜터링신청을 원하시면 '신청합니다'라고 작성해주세요"/>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="replyWriteBtn btn btn-success">작성</button>
						</div>
					</div>
				</form>
				<!-- updateForm  댓글 삭제 기능 -->
				
				<form name="updateForm" role="form" method="post" action="/board/replyDelete">
					<input type="hidden" name="bno" value="${replyDelete.bno}" readonly="readonly"/>
					<input type="hidden" id="rno" name="rno" value="${replyDelete.rno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 

				</form>
			</section>
			<hr />
		</div>
	</body>
</html>