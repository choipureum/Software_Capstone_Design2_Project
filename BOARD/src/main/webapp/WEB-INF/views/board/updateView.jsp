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
				 	ont-family: "맑은 고딕";
				}
				
			#top{
					background-color: #1D2475; 
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
				font-size:15px;
				width: 100%
				}
			
			.menubar ul{
				background: #FFFFFF;
				height:50px;
				list-style:none;
				margin:0;
				padding:0;
				float: middle;
				
				}
				
			.menubar li{
							float:left;
							padding:0px;
						}
				
			/*한양대 로고 */
			.menubar img{
							height:50px; 
							width:auto;
							float: left;
							padding-left:30px
						}	
						
			.menubar li a{
							background: #FFFFFF;
							color:rgb(71,71,71);
							display:block;
							font-weight:normal;
							line-height:50px;
							margin:0px;
							padding:0px 35px;
							text-align:center;
							text-decoration:none;
						}
				
			.menubar li a:hover, .menubar ul li:hover a{
															background: #CCCCCC;
															color:rgb(71,71,71);
															text-decoration:none;
														}

				
			.menubar li ul{
							background: #FFFFFF;
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
								background: #FFFFFF;
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
								font-size:13px;
								font-style:normal;
								margin:0px;
								padding:0px 10px 0px 15px;
								text-align:left;
							}
				
			.menubar li ul a:hover, .menubar li ul li:hover a{
																background: #CCCCCC;
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
				padding:10px 15px 10px 10px;
			}
			
			/*textarea style*/
			.scrollabletextbox {
								    height:500px;
								    width:600px;		   
								    font-size:100%;
								    overflow:scroll;
							   }
		</style>
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(document).on("click","#fileDel", function(){
				$(this).parent().remove();
			})
			
			fn_addFile();
			
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "/board/readView?bno=${update.bno}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
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
			var updateForm = $("form[name='updateForm'] .chk").length;
			for(var i = 0; i<updateForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
 		function fn_addFile(){
			var fileIndex = 1;
			//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
			$(".fileAdd_btn").on("click", function(){
				$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
			});
			$(document).on("click","#fileDelBtn", function(){
				$(this).parent().remove();
				
			});
		}
 		var fileNoArry = new Array();
 		var fileNameArry = new Array();
 		
 		function fn_del(value, name){
 			
 			fileNoArry.push(value);
 			fileNameArry.push(name);
 			$("#fileNoDel").attr("value", fileNoArry);
 			$("#fileNameDel").attr("value", fileNameArry);
 		}
	</script>
	<body>
	
		<div id="top">
			<span style="float:left; padding-left:40px">
				<img src="${pageContext.request.contextPath}/resources/ddoring_logo_white.png" style="padding:5px;" width="auto" height="100%" alt="Logo">
			</span>
			
			<!-- 회원님 안녕하세요 -->
			<div style="position:absolute;left:100px; top:12px">
			<c:if test="${member != null}">
				<p id="lg_hi">${member.userId}님 환영합니다.</p>
			</c:if>
			</div>
			
			<!-- 로그아웃 -->
			<div  style="position:absolute;right:40px; top:12px">
				<c:if test="${member != null}"><a href="/member/logout" id="logout" onclick="alert('로그아웃 되었습니다')">로그아웃</a></c:if>	
			</div> 
		</div>
		
		<!-- 원래 홈새로고침 가 있던 자리입니다 -->	
		
		<!-- 메뉴바 -->
		<div class="menubar" style="margin:0 auto; padding:20px">
		
<!-- 		<!-- 홈새로고침 --> 
<!-- 		<a href="http://localhost:8080/board/list/"> -->
<%-- 			<span style="float:left; padding-left:10px;"><img src="${pageContext.request.contextPath}/resources/HYU_logo.png" style="padding: 10px;"  --%>
<!-- 			height="100%" width="auto" alt="HYU_logo"> -->
<!-- 			</span></a><br> -->
<!-- 			<span style="color:#132c6f; padding:20px; font-size:27px">| 한양또래튜터링 "또링"</span> -->

			<a href="http://localhost:8080/board/list/">
			<img src="${pageContext.request.contextPath}/resources/HYU_logo.png" align="left" alt="HYU_logo">
			</a>
			<ul>
			<li style="background: #FFFFFF; color:rgb(109,109,109); display:block; font-weight:맑은고딕;
				font-size: 23px; line-height:50px; margin:0px; padding:0px 150px 0 20; text-align:center;
				text-decoration:none;">| &nbsp; 한양또래튜터링</li>
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
		<div style="margin:50px 0 0 150px">
			<h2 style="font-family:맑은고딕;">튜터링 매칭</h2>		
		</div>
		<div id="root" style="margin:30px 0 0 130px">
			 
			
			<section id="container">
				<form name="updateForm" role="form" method="post" action="/board/update" enctype="multipart/form-data">
					<input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<input type="hidden" id="fileNoDel" name="fileNoDel[]" value=""> 
					<input type="hidden" id="fileNameDel" name="fileNameDel[]" value=""> 
					<table>
						<tbody>
							<tr>
								<td>
									<label for="title">제목</label></td>
									<td><input type="text" id="title" name="title" value="${update.title}" placeholder=" [팀명] 주제명 / 형식으로 입력해주세요." size="70"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label></td>
									<td><textarea id="content" name="content" class="scrollabletextbox" placeholder="내용을 입력하세요." "style=width:600px;height:500px"><c:out value="${update.content}" /></textarea>
								</td>
							</tr>
							<tr>
									<td>
										<b>사용자 구분</b>
									</td>
									<td>
										<label for="tutor">튜터&nbsp;<input type="radio" id="tutor" name="tutortutie" value="튜터" checked="checked"></label>&nbsp;&nbsp;
										<label for="tutie">튜티&nbsp;<input type="radio" id="tutie" name="tutortutie" value="튜티"></label>&nbsp;&nbsp;									
									</td>
								</tr>

								<tr>
									<td>
										<b>유형선택</b>										
									</td>
									<td>
										<label for="gyo">교과&nbsp;<input type="radio" id="gyo" name="gyogwa" value="교과" checked="checked"></label>&nbsp;&nbsp;
										<label for="bigyo">비교과&nbsp;<input type="radio" id="bigyo" name="gyogwa" value="비교과"></label>&nbsp;&nbsp;									
									</td>
								</tr>
								
								<tr>
									<td>
										<b>분야</b>										
									</td>
									<td>
										<label for="zu">주전공&nbsp;<input type="radio" id="zu" name="zuda" value="주전공" checked="checked"></label>&nbsp;&nbsp;
										<label for="da">다전공&nbsp;<input type="radio" id="da" name="zuda" value="다전공"></label>&nbsp;&nbsp;									
									</td>
								</tr>
							<tr>
								<td>
									<label for="writer">작성자</label></td>
									<td><input type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="regdate">작성날짜</label></td>
									<td><fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd"/>					
								</td>
							</tr>
							<tr>
							<td>
								<button type="button" class="update_btn">저장</button>
								<button type="button" class="cancel_btn">취소</button></td>
							<td><button type="button" class="fileAdd_btn">파일추가</button></td>
							<tr>
							<td></td>															
								<td id="fileIndex">
									<c:forEach var="file" items="${file}" varStatus="var">									
										<input type="hidden" id="FILE_NO" name="FILE_NO_${var.index}" value="${file.FILE_NO }">
										<input type="hidden" id="FILE_NAME" name="FILE_NAME" value="FILE_NO_${var.index}">
										<a href="#" id="fileName" onclick="return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE})
										<button id="fileDel" onclick="fn_del('${file.FILE_NO}','FILE_NO_${var.index}');" type="button">삭제</button><br>																		
									</c:forEach>
								</td><td></td>
							</tr>
						</tbody>			
					</table>
				
						
				
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>