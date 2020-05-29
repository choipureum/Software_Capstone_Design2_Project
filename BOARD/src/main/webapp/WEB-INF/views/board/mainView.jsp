<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
	<head>
		<link type="text/css" rel="stylesheet" href="./menubar.css"></link>
	</head>
	<body>
	
		<div id="top">
			<span style="float:left; padding-left:40px"><img src="ddoring_logo_white.png" style="padding:5px;" 
			width="auto" height="70%" alt="Logo"></span>
			<span style="color:white; padding-top:13px; padding-left:20px; 
			display:table-cell; vertical-align:middle;">
			해양융합공학과 정은성님</span>
			<span style="color:white; padding-top:13px; padding-left:1040px; 
			display:table-cell; text-align:right;">로그아웃 &nbsp; &nbsp; &nbsp; 환경설정</span>
		</div>
		
	<div class="menubar" style="padding:20px;">
	
		<img src="HYU_logo.png" align="left" alt="HYU_logo">
	
		<ul>
			<li style="background: #FFFFFF; color:rgb(109,109,109); display:block; font-weight:맑은고딕;
			font-size: 23px; line-height:50px; margin:0px; padding:0px 150px 0 20; text-align:center;
			text-decoration:none;">| &nbsp; 한양또래튜터링</li>
			
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
					<li><a href="#"	>한양또래튜터링 현황 및 수상</a></li>
					<li><a href="#">FAQ</a></li>
				</ul>
			</li>
		</ul>
	</div>
	
	<div id="slide">
	  <input type="radio" name="pos" id="pos1" checked>
	  <input type="radio" name="pos" id="pos2">
	  <input type="radio" name="pos" id="pos3">
	  <input type="radio" name="pos" id="pos4">
	  <ul>
	    <li></li>
	    <li></li>
	    <li></li>
	    <li></li>
	  </ul>
	  <p class="pos">
	    <label for="pos1"></label>
	    <label for="pos2"></label>
	    <label for="pos3"></label>
	    <label for="pos4"></label>
	  </p>
	</div>
	
	<div id="mainboard">
		<div style="padding:20px; display: inline-block; width:30%;">
		<table style="line-height:20px; color: rgb(71,71,71);">
				<tr>
					<td style="font-size:15px; font-weight:bold;line-height:40px;">공지사항</td>
					<td style="padding-left:20px; font-size:12px;"><u>more+</u></td>
				</tr>
				<tr style="font-size:12px;">
					<td>[일반] 2020-1학기 학습법 한양또래튜터링 콜라보레이트 규정 안내</td>
					<td style="padding-left:20px;">04/01</td>
				</tr>
				<tr style="font-size:12px;">
					<td><b>[중요]</b> 2020-1학기 튜터 사회봉사 신청 마감 안내</td>
					<td style="padding-left:20px;">03/12</td>
				</tr>
				<tr style="font-size:12px;">
					<td><b>[중요]</b> 2020-1학기 한양 또래튜터링 선정자 안내 공지</td>
					<td style="padding-left:20px;">02/28</td>
				</tr>
				<tr style="font-size:12px;">
					<td><b>[중요]</b> 2020-1학기 한양 또래튜터링 모집</td>
					<td style="padding-left:20px;">02/20</td>
				</tr>
				<tr style="font-size:12px;">
					<td>[일반] 활동일지 양식 / 활동일지 업로드법</td>
					<td style="padding-left:20px;">02/05</td>
				</tr>
				<tr style="font-size:12px;">
					<td><b>[중요]</b> 2019-2학기 한양 또래튜터링 마감 안내 공지</td>
					<td style="padding-left:20px;">11/11</td>
				</tr>
		</table>
		</div>
		<div style="padding:20px; display: inline-block; width:25%;">
		<table style="line-height:20px; color: rgb(71,71,71);">
				<tr>
					<td style="font-size:15px; font-weight:bold;line-height:40px;">튜터링 매칭</td>
					<td style="padding-left:20px; font-size:12px;"><u>more+</u></td>
				</tr>
				<tr style="font-size:12px;">
					<td>[팀명] 다중전공생을 위한 파이썬 튜터링</td>
					<td style="padding-left:20px;">04/20</td>
				</tr>
				<tr style="font-size:12px;">
					<td>[팀명] 다중전공생을 위한 프로그래밍 튜터링</td>
					<td style="padding-left:20px;">04/20</td>
				</tr>
				<tr style="font-size:12px;">
					<td>[팀명] 일반물리학 A+ 가져가세요(XXX교수님)</td>
					<td style="padding-left:20px;">03/11</td>
				</tr>
				<tr style="font-size:12px;">
					<td>[팀명] 재료화학공학과 화공양론 튜터링</td>
					<td style="padding-left:20px;">03/11</td>
				</tr>
				<tr style="font-size:12px;">
					<td>[팀명] 기초통계 배우실분</td>
					<td style="padding-left:20px;">03/10</td>
				</tr>
				<tr style="font-size:12px;">
					<td>[팀명] 생활영어 튜터링입니다.</td>
					<td style="padding-left:20px;">03/10</td>
				</tr>
		</table>
		</div>
		<div style="padding:20 0 20 20; display: inline-block; width:35%;">
		
		<table style="color: rgb(71,71,71);">
				<tr>
					<td style="font-size:15px; font-weight:bold;line-height:50px;">나의 튜터링</td>
				</tr>
				<tr align="center" style="font-size:12px; font-weight:bold;line-height:30px">
					<td>기간</td>
					<td>유형/분야</td>
					<td>팀명</td>
					<td>튜터/튜티</td>
					<td style="padding-left:20px;">커뮤니티바로가기</td>
				</tr>
				<tr align="center" style="font-size:12px;">
					<td rowspan="2">2020-1학기</td>
					<td>교과/다전공</td>
					<td>어피치</td>
					<td>튜터</td>
					<td align="center"><img src="interface.png" style="width:auto; height:25"></td>
				</tr>
				<tr align="center" style="font-size:12px;">
					<td>교과/주전공</td>
					<td>AAA</td>
					<td>튜티</td>
					<td align="center"><img src="interface.png" style="width:auto; height:25"></td>
				</tr>
				<tr align="center" style="font-size:12px;">
					<td>2019-1학기</td>
					<td>비교과</td>
					<td>잉글리시마스터</td>
					<td>튜티</td>
					<td><img src="interface.png" style="width:auto; height:25"></td>
				</tr>
		</table>
		</div>
	</div>
	<div id="mainboard">
		<div style="padding:20px; display: inline-block; width:30%;">
		<p style="font-size:15px; font-weight:bold;line-height:30px; color: rgb(71,71,71); margin-bottom:10px;">핵심역량 지수</p>
		<table style="line-height:20px; color: rgb(71,71,71); border:solid #cccccc 0.2px;">
				<tr style="font-size:12px;">
					<td style="padding:10 20 0 20;">의사소통역량</td>
					<td style="padding:10 20 0 0;"><div class="graph"><strong class="bar" style="width: 50%;">50%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">글로벌역량</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 50%;">50%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">지식정보활용</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 50%;">50%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">창의적사고</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 50%;">50%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">리더십역량</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 50%;">50%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">사회윤리</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 50%;">50%</strong></div></td>
				</tr>
		</table>
		</div>
		<div style="padding:20px; display: inline-block; width:30%;">
		<p style="font-size:15px; font-weight:bold;line-height:30px; color: rgb(71,71,71); margin-bottom:10px;">나의 역량 지수</p>
		<table style="line-height:20px; color: rgb(71,71,71); border:solid #cccccc 0.2px;">
				<tr style="font-size:12px;">
					<td style="padding:10 20 0 20;">의사소통역량</td>
					<td style="padding:10 20 0 0;"><div class="graph"><strong class="bar" style="width: 42%;">42%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">글로벌역량</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 5%;">5%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">지식정보활용</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 18%;">18%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">창의적사고</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 30%;">30%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">리더십역량</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 24%;">24%</strong></div></td>
				</tr>
				<tr style="font-size:12px;">
					<td style="padding:0 20 0 20;">사회윤리</td>
					<td style="padding:0 20 0 0;"><div class="graph"><strong class="bar" style="width: 10%;">10%</strong></div></td>
				</tr>
		</table>
		</div>
		<div style="padding:20px; display: inline-block; width:20%;">
		<p style="font-size:15px; font-weight:bold;line-height:30px; color: rgb(71,71,71); margin-bottom:10px;">서비스 바로가기</p>
		<table style="line-height:20px; color: rgb(71,71,71);" align="center">
				<tr style="font-size:12px;">
					<td>º 한양대학교 포털</td>
					<td style="padding-left:20px;">º 커리어개발센터</td>
				</tr>
				<tr style="font-size:12px;">
					<td>º 교수학습 지원센터</td>
					<td style="padding-left:20px;">º 튜터링 일정안내</td>
				</tr>
		</table>
		</div>
	</div>
	</body>
</html>

