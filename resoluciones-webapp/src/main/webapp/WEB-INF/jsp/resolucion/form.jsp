<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<div class="col-md-6">
	<form:form modelAttribute="resolucion" action="guardar">
		<h2>Registro de Resolución</h2>
		<div class="form-group">
			<label for="exampleInputEmail1">Nombre</label>
			<form:input path="nombre" class="form-control" placeholder="Nombre"
				autofocus="autofocus" />
		</div>
		<button type="submit" class="btn btn-primary">Guardar</button>
	</form:form>
</div>