<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listDetalle}" id="detalle" requestURI="/dashboard" class="table">

	
	
	<display:column title="Contenido" property="contenido" />

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