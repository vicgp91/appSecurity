<%@ include file="/WEB-INF/views/includes/resource.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>

<body>


	<div>
		<tiles:insertAttribute name="body" />

	</div>

	<div class="row col-lg-12 container">

		<tiles:insertAttribute name="footer" />
	</div>


</body>

</html>
