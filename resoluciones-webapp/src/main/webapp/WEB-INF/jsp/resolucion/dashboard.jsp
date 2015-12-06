<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listResolucion}" id="resolucion"
	requestURI="/dashboard" class="table">


	<display:column title="Nombre" property="nombre" />

	<display:column title="accion">
		<a href="#"
			onclick="javascript:edit('<c:out value="${item.id}"></c:out>');">
			<c:out value="Editar" />

		</a>
	</display:column>
	<display:column title="accion">
		<a href="#"
			onclick="javascript:edit('<c:out value="${item.id}"></c:out>');">
			<c:out value="Eliminar" />
		</a>
	</display:column>
z
</display:table>

<br>
<br>
<a class="btn btn-primary" href="../resolucion/nuevo">Agregar</a>