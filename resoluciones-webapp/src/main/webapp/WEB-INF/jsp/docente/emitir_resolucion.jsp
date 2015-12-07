<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<div class="col-md-12">

	<div class="col-md-6">

		<form:form modelAttribute="emision"
			action="guardar">
			<h2>Emisión de Resolución</h2>
			<div class="form-group">
				<label for="codresolucion">Código</label>
				<form:input path="codresolucion" class="form-control"
					placeholder="Código" autofocus="autofocus" required="required" />
			</div>
			<div class="form-group">
				<label for="fechaemitida">Fecha Emitida</label>
				<form:input type="date" path="fechaemitidaS" class="form-control"
					placeholder="Fecha de Emisión" required="required" />
			</div>
			<div class="form-group">
				<label for="resolucion.id">Resolución</label>
				<form:select path="resolucion.id" items="${resoluciones}"
					itemLabel="nombre" itemValue="id"></form:select>
			</div>
			<button type="submit" class="btn btn-primary">Guardar</button>
			<form:hidden path="id" />
		</form:form>

	</div>

</div>