<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
   <script type="text/javascript">
	$(function() {
		$('#idChk').click(function() {
			var id = $('#id').val();
			if (id == "") {
				alert('아이디 입력하고 체크하세요');
				$('#id').focus();
				return false;
			}
			$.post("idChk.do", "id=" + id, function(msg) {
				alert(msg);
			});
		});
	});
</script>
</head>


<style>
@media screen and (min-width:600px) {
  .container{
    width: 470px;
    padding: 30px;
  }
}
input[type=checkbox]
{
  /* Double-sized Checkboxes */
  -ms-transform: scale(1.5); /* IE */
  -moz-transform: scale(1.5); /* FF */
  -webkit-transform: scale(1.5); /* Safari and Chrome */
  -o-transform: scale(1.5); /* Opera */
  padding: 10px;
}
</style>
<body>
<div class="container">
			<div class="jumbotron">
				<h3 style="text-align: center;">회원가입</h3>
				<br>
				<form method="post" action="join.do">
				<div class="form-group">
					<label>이메일</label> <input type="email" class="form-control"
						placeholder="이메일" name="userEmail" maxlength="30"
						value="${Users.userEmail}">
				</div>

				<div class="form-group">
					<label>이름</label> <input type="text" class="form-control"
						placeholder="이름" name="name" maxlength="20" required="required"
						value="${Users.name}">
				</div>
				<div class="form-group">
					<label>비밀번호 <span>(8자 이상)</span></label> <input type="password"
						class="form-control" placeholder="비밀번호" name="userPassword"
						maxlength="20" required="required">
				</div>
				<div class="form-group">
					<label>비밀번호 확인</label> <input type="password" class="form-control"
						placeholder="비밀번호 확인" name="userPassword2" maxlength="20"
						required="required">
				</div>
                <div class="checkbox">
                       　 <input type="checkbox" name="tos_agree" required="required">  <a href="tos.do">이용약관</a> 
                        및 <a href="privacy.do">개인정보처리방침</a>에 동의합니다.
                </div>
				<br> 
				<input type="submit" class="btn btn-primary" value="확인">
				</form>
			</div>	</div>

<%@ include file="footer.jsp"%>

</body>
</html>