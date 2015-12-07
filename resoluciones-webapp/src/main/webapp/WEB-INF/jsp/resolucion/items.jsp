<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listItem}" id="item" requestURI="/dashboard"
	class="table">

	<display:column title="Item" property="item.nombre" />
	<display:column title="Campo" property="campo" />


	<display:column title="accion">
		<a href="items/${item.id}">Editar</a>
	</display:column>
</display:table>
<br>
<br>
<a class="btn btn-primary" href="items/nuevo">Agregar</a>