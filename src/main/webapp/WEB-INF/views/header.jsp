<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<c:set var="path" value="${pageContext.request.contextPath }" />

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">      
      <a class="navbar-brand" href="home.do">CodeWeaver</a>
    </div>
  </div>
</nav>  
<style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      border-radius: 0;
      margin-bottom: inherit;
    }
    
   a:link,
   a:visited,
   a:active,
   a:hover
   {
   color: black;
    }
</style>  
