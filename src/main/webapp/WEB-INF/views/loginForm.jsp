<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
</head>
<style>
@media screen and (min-width:600px) {
  .container{
    width: 470px;
    padding: 30px;
  }
}
</style>
<body>


   	<div class="container">
			<div class="jumbotron">
				<h3 style="text-align: center;">로그인</h3>
				<br>
				<div class="form-group">
					<label>이메일</label> <input type="text" class="form-control"
						placeholder="이메일" name="userEmail" maxlength="80">
				</div>
				<div class="form-group">
					<label>비밀번호</label> <input type="password" class="form-control"
						placeholder="비밀번호" name="userPasswd" maxlength="80">
				</div>
				<input type="button" class="btn btn-primary align-center"
					value="로그인"> <br> <br>
				<p style="font-size: 1em; font: bold;">
					<a href="joinForm.do" id="signup"><span
						class="glyphicon glyphicon-user"></span> 회원가입 신청 </a>
				</p>

				<p style="font-size: 1em; font: bold;">
					<a href="newPw.do" id="signup"><span
						class="glyphicon glyphicon-question-sign"></span> 비밀번호 재설정 </a>
				</p>
		</div>
	</div>


<%@ include file="footer.jsp"%>

</body>
</html>