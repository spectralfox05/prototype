<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Code Weaver :: For the developers</title>
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	border-radius: 0;
	margin-bottom: inherit;
}
/* Remove the jumbotron's default bottom margin */
.jumbotron {
	background-image: url("resources/images/worlds3.jpg");
	margin: 0;
	color: white;
	margin-bottom: inherit;
	border-radius: 0! important;
}

a:link, a:visited, a:active, a:hover {
	color: black;
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	
	<div class="container">
		<div class="jumbotron">
			<div>
				<div class="container text-center">
					<h1>CodeWeaver</h1>
					<p>For the developers</p>
					<div class="panel-body"></div>
				</div>
			</div>
		</div>
	</div>



<div class="container text-center">
  <form class="form-group" action="/action_page.php">

      <style>
          .searchform .tt{
             border-top-left-radius: 4px;
              border-bottom-left-radius: 4px;
              width: 4em;
              text-align: center;
          }
          
         .searchform .form-control{
              border-radius: 0px;
          }
           .searchform .btn{
              border-top-left-radius: 0px;
              border-bottom-left-radius: 0px;

          }
          
      </style>				
	
    
		<table class="searchform" align='center'>
			<tr>
				<td><select class="tt"
					style="font-size: 1em; height: 34px; background-color: white;">
						<option value="all">전체</option>
						<option value="univ">대학</option>
				</select></td>
				<td><input type="text" class="form-control" placeholder="검색"
					name="search" size="100%" ></td>
				<td>
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</td>
			</tr>
		</table>
      </form></div>
	<%@ include file="footer.jsp"%>
</body>
</html>
