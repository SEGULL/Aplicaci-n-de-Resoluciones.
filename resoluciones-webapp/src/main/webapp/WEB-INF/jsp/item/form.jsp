<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<div class="col-md-6">
	<form:form modelAttribute="item" action="guardar">
		<h2>Registro de Item</h2>
		<div class="form-group">
			<label for="exampleInputEmail1">Nombre</label>
			<form:input path="nombre" class="form-control" placeholder="Nombre"
				autofocus="autofocus" />
			<label for="exampleInputEmail1">Tipo</label>
			<form:input path="tipo" class="form-control" placeholder="Tipo"
				autofocus="autofocus"/>	
		</div>
		<button type="submit" class="btn btn-primary">Guardar</button>
		<form:hidden path="id" />
	</form:form>
</div>