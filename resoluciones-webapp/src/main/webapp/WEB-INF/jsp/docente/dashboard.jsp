<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listDocente}" id="docente"
	requestURI="/dashboard" class="table">


	<display:column title="Region" property="nombreReg" />
	<display:column title="Unidad Ejecutora" property="nombreUnEje" />
	<display:column title="Organo Intermedio" property="nombreOrInter" />
	<display:column title="Provincia" property="provincia" />
	<display:column title="Distrito" property="distrito" />
	<display:column title="Tipo I.E." property="tipoIE" />
	<display:column title="Gestion" property="nombreUnEje" />
	<display:column title="Unidad Ejecutora" property="gestion" />
	<display:column title="Apellido P." property="apellidoPat" />
	<display:column title="Apellido M." property="apellidoMat" />
	<display:column title="Nombres" property="nombres" />
	<display:column title="D.N.I." property="dni" />
	<display:column title="accion">
		<a href="resolemitida/dashboardemitirresolucions.jsp">Res. <%-- onclick="javascript:edit('<c:out value="${item.id}"></c:out>');--%>
		</a>
	</display:column>
	<display:column title="accion">
		<a href="#"
			onclick="javascript:edit('<c:out value="${item.nombres}"></c:out>');">
			<c:out value="Ver inf." />-${item}-

		</a>
	</display:column>




</display:table>