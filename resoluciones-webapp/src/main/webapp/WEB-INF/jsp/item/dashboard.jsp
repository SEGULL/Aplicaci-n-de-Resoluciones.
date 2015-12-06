<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listItem}" id="item" requestURI="/dashboard" class="table">

	
	<display:column title="Nombre" property="nombre" />
	<display:column title="Tipo" property="tipo" />

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
