<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listItem}" id="item" requestURI="/dashboard" class="table">

	
	<display:column title="Nombre" property="nombre" />
	<display:column title="Tipo" property="tipo" />

	
		<display:column title="accion">
		<a href="../item/${item.id}" class="btn btn-primary">Editar</a>
		</display:column>
		<display:column title="accion">
<!-- 		<a href="../itemresol/nuevo"  class="btn btn-primary">A�adir campo</a> -->
		</display:column>
</display:table>
<br>
<br>
<a class="btn btn-primary" href="../item/nuevo">Agregar</a>