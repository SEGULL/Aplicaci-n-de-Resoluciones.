<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listItem}" id="item" requestURI="/dashboard" class="table">

	
	<display:column title="Nombre" property="campo" />

	
		<display:column title="accion">
		<a href="../item/${item.id}">Editar</a>
		</display:column>
		<display:column title="accion">
		<a href="../itemresol/nuevo">Añadir campo</a>
		</display:column>
</display:table>
<br>
<br>
<a class="btn btn-primary" href="../item/nuevo">Agregar</a>