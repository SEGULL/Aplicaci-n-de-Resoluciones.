<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>


<display:table name="${listItemResol}" id="itemResol" requestURI="/dashboard" class="table">

	<display:column title="Nom. Resolucion" property="resolucion.nombre" />
	<display:column title="Nom. Item." property="item.nombre" />
	<display:column title="Tipo Item." property="item.tipo" />
	<display:column title="Campo" property="campo" />


	<display:column title="accion">
		<a href="../itemresol/${itemResol.id}">Editar</a>
		<a href="../itemresol/${itemResol.id}/eliminar">Eliminar</a>
	</display:column>
	
</display:table>

<br>
<a class="btn btn-primary" href="../itemresol/nuevo">Agregar</a>