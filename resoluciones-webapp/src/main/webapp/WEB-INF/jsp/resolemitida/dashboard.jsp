<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listResolEmitida}" id="ResolEmitida" requestURI="/dashboard" class="table">

	<display:column title="Nom. Docente" property="docente.nombres" />
	<display:column title="DIN Docente" property="docente.dni" />
	<display:column title="Nombre Resolucion" property="resolucion.nombre" />



	<display:column title="accion">
				<a href="#" onclick="javascript:edit('<c:out value="${item.id}"></c:out>');">
					<c:out value="Editar"/>

				</a>
	</display:column>
		<display:column title="accion">
				<a href="#" onclick="javascript:edit('<c:out value="${item.id}"></c:out>');">
					<c:out value="Eliminar"/>

				</a>
	</display:column>
	
	
	
</display:table>