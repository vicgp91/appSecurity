<%@ include file="/WEB-INF/views/includes/resource.jsp"%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Administrador</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>

			<c:url var="urlAddReporte" value="/reportes/agregar" />
			<li><a title="Agregar un nuevo reporte" href="${urlAddReporte}"><span
					class="glyphicon glyphicon-edit" aria-hidden="true"></span> Opción 1</a></li>


			<c:url var="urlHomeRep" value="/reportes/listReportes" />
			<li><a title="Consultar listado de reportes"
				href="${urlHomeRep}"><span class="glyphicon glyphicon-check"
					aria-hidden="true"></span> Opción 2</a></li>

			<c:url var="urlHomeUsuarios" value="/loginUsers/admUsuarios" />

			<li><c:if test="${loginSesion.perfil != '1'}">
					<a title="Administracion de información de los usuarios"
						href="${urlHomeUsuarios}"><span
						class="glyphicon glyphicon-user" aria-hidden="true"></span>
						Administración de Usuarios</a>
				</c:if></li>




			<c:url var="urlExit" value="/loginUsers/Signoff" />
			<li><a title="Cerrar Sesión" href="${urlExit}"><span
					class="glyphicon glyphicon-off" aria-hidden="true"></span> Salir</a></li>

		</ul>
	</div>
</nav>