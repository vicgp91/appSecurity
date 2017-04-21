
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<style>
<!--
.smiley {
	width: 17%;
	height: 96px;
	background: url(${resourcesURL}/img/TE_trans.png);
	background-repeat: round;
	margin: 0px auto 50px auto;
	margin-top: -100;
	margin-bottom: 0px;
}

h1 {
	font-size: 64px;
	color: #8c8c8c;
	letter-spacing: -4px;
	margin-bottom: -8px;
	text-align: center;
}

.modal.modal-wide .modal-dialog {
	width: 90%;
}
-->
</style>
		<div class="container jumbotron"
			style="margin: 64px auto 0px; box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);">
			<div class="errorLabel"></div>
			<div class="contentHeader">
				<div class="smiley"></div>
				<h1>
					404<small> Página no encontrada.</small>
				</h1>
			</div>
			<div>
				<div class="contentMiddle clear">

					<div class="rightContent">

						<div class="col-md-12">
							<p>Recurso no encontrado.</p>
							La página solicitada no está disponible. Con frecuencia es debido
							a algún error al escribir la dirección URL. <br />
							<h3>Medidas</h3>
							<ul>
								<li>Verifique la direci&oacute;n URL a la que est&aacute;
									intentando acceder.</li>
								<li>Presione el bot&oacute;n de "Actualizar" en el
									navegador Web para reintentar la solicitud.</li>
								<li>Pongase en contacto con el servicio t&eacute;cnico
									indicandole la causa del error .</li>
							</ul>

							<div class="space20" style="text-align: center;">
								<a href="http://localhost:8080/objetos-perdidos/" style=""
									class="btn btn-primary btn-md"><span
									class="glyphicon glyphicon-home"></span> Ir al Inicio</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>