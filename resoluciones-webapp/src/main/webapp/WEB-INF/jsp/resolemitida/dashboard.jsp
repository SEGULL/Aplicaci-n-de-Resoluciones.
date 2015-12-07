<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<script src="../bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/datatables.js"></script>



<display:table name="${listResolEmitida}" id="ResolEmitida"
	requestURI="/dashboard" class="table">

	<display:column title="Nom. Docente" property="docente.nombres" />
	<display:column title="DIN Docente" property="docente.dni" />
	<display:column title="Nombre Resolucion" property="resolucion.nombre" />
	<display:column title="Fecha Emitida" property="fechaemitida" />


	<display:column title="accion">
		<a href="../itemresol/${itemResol.id}" class="btn btn-success">Editar</a>
		<a href="../itemresol/${itemResol.id}/eliminar"
			class="btn btn-warning">Eliminar</a>
		<a href="../itemresol/${itemResol.id}/eliminar"
			class="btn btn-warning">Ver Resolucion</a>
	</display:column>



</display:table>

<script>
	$('#ResolEmitida').DataTable();
</script>