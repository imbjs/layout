<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %> 
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>   
   
<html>
<head> 


<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
	<decorator:getProperty property="page.local_script"/>
	<!-- 위에 태그를 써야지만 사용하면 jsp들의 자바스크립트 링크 태그들을 사용할수 있게 해주는 태그이다. -->
	<!-- 그 jsp 자바스크립트단을 <content tag="local_script">태그로 또 감싸줘야지 사용이 가능하다. --> 
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>

<body>
	<div class="contatiner" style="border:1px solid red;">
	
		<div class="row" >
			<page:applyDecorator name="top"/>
		</div>
		 
		<div class="row" >
			<page:applyDecorator name="header"/>
		</div> 
		
		<div class="row text-center" >
			
			<div class="col-md-12" >
				  <decorator:body />
			</div>
			
		</div>
		
		<div class="row footer " style="text-align:center !important;width:100%" >				
			<page:applyDecorator name="footer"/>			
		</div>
	  	
	  	
  	</div>


</body>




</html>

    