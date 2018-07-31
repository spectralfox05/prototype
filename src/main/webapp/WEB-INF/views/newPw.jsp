<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title>비밀번호 재설정</title>
</head>
<style>
@media screen and (min-width:600px) {
  .container{
    width: 600px;
    padding: 30px;
  }
}
</style>
<body>


   	 <div class="container text-center">
			<div class="jumbotron"><form method="post" action="sendMail.do">
				<h3 style="text-align: center;">비밀번호 재설정</h3><br>
                    

                       혹시 비밀번호를 잊어버리셨나요? <br>
                        비밀번호를 재설정하기 위하여 가입했던 이메일을 입력하세요.<br>
                        
				<br><br>
				<div class="form-group" align='left'>
					<label >이메일</label> <input type="text" class="form-control"
						placeholder="이메일" name="userEmail" maxlength="80">
				</div>
			
				<input type="submit" class="btn btn-primary align-center"
					value="비밀번호 재설정 메일 발송"> <br> <br>

		</form></div>
	</div>


<%@ include file="footer.jsp"%>

</body>
</html>