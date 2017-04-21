<%@ include file="/WEB-INF/views/includes/resource.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Objetos Perdidos y Encontrados</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css" /> -->
<!-- <script src="resources/js/jquery-3.0.0.min.js"></script> -->
<!-- <script src="resources/js/bootstrap.min.js"></script> -->


<c:url var="css" value="/resources/css/bootstrap.min.css" />
<c:url var="js" value="/resources/js/jquery-3.0.0.min.js" />
<c:url var="bootJs" value="/resources/js/bootstrap.min.js" />
<link rel="stylesheet" href="${css}"/>
<script src="${js}"></script>
<script src="${bootJs}"></script>
</head>

<body>


<div class="">

<tiles:insertAttribute name="menu" />
</div>

<div class="col-lg-12 container">
	<tiles:insertAttribute name="body" />

</div>

<div class="row col-lg-12 container">

<tiles:insertAttribute name="footer" />
</div>






	


</body>

</html>
