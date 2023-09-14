<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="../resources/css/header.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/footer.css" rel="stylesheet" type="text/css">
	<style>
	
		/* 폰트 */
 		@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	
		/* 이벤트페이지 제목1+제목2 */
		.notice_sub {
			margin: 50px 0 ;
		}
	
		/* 이벤트페이지 제목1  */
		.notice_text {
    		font-family: 'Noto Sans KR', sans-serif;
			font-size: 43px;
			font-weight: 700;
			line-height: 1.2;
    		letter-spacing: -3px;
		}
		
		/* 이벤트페이지 제목2 */
 		.event_text2 {
			font-size: 0.8rem;
			color: #888887;
		}
	
		.container {
			width: 100%;
			text-align: center;
			font-family: 'Noto Sans KR', sans-serif;
 			font-size: 14px;
			margin: 0 auto;
		}
		
		/* 중앙정렬 */
		.reply_table {
			width: 100%;
			display: flex;
			justify-content: center;
		}
		
		/* 하유리: 행 간격 띄우기(23.07.17.) */
		.reply_table table {
			text-align: left;	/* th 왼쪽정렬 */
			border-collapse: separate;
			border-spacing: 10px 20px;
		}
	
		/* 하유리: 글자-input박스 간 간격(23.07.17.) */
		.reply_table th {
			font-weight: normal;
			flex: left;
			padding-right: 100px;
		}
		
		.reply_table input, textarea {
			padding: 5px 5px;
		}
		
		/* input, textarea 스타일 지정 */
		.reply_table input {
			border: 1px solid #e3e3e3;
			border-radius: 5px;
			width: 640px;
			height: 44px;
		}
		
		.reply_table textarea {
			border: 1px solid #e3e3e3;
			border-radius: 5px;
			width: 640px;
			height: 250px;
		}
		
		/* input, textarea 클릭 시 생기는 테두리 스타일 지정(23.07.17.)  */
		input:focus{
			outline: 1px solid #000;
		}
		
		textarea:focus {
			outline: 1px solid #000;
		}
		
		.reply_btn {
			float: right;
			padding-right: 10px;
		}
	
		.replyBtn{
			margin: 0px 0px 60px 0px;
			padding: 5px 10px;
			border-radius: 5px;
			border-style: none;
			background-color:#128853;
			color: #fff;
			float: right;
			margin-left: 20px;
			float: center;
		}
		
		.contentBtn:focus {
			outline: none;			/* 하유리: 버튼 클릭 시 생기는 테두리 없애기(23..07.31.) */
		}
	</style>
</head>

<body>
	<div class="container mt-3">
		<div class="notice_sub">
			<p class="notice_text">NOTICE</p>
		</div>
		<!-- 게시판 -->
		<div class="reply_table">
			<form action="<c:url value='/review/reply'/>" method="POST">
				<input name="re_articleNO" type="hidden" value="${review.re_articleNO }">
				<table>				
 					<tr>
						<th>작성자</th>
						<td>	
							<input type="text" class="reply_input" name="userId" value="${user.userId }" autocomplete="off" required readonly/>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>	
							<input type="text" class="reply_input" name="re_title" placeholder="제목을 입력해 주세요." autocomplete="off" required/>
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea class="reply_input" name="re_content" cols="50" rows="10" placeholder="내용을 입력해 주세요." autocomplete="off" required></textarea>
						</td>
					</tr>		
				</table>
				<div class="reply_btn">
					<button class="contentBtn" type="submit">답변 등록</button>
					<button class="contentBtn" type="reset" >초기화</button>
					<button class="contentBtn" type="button" onClick="location.href='${contextPath}/review/list'">글목록</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>