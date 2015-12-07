<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<div class="col-md-12">
	<div class="col-md-6">
		<form:form modelAttribute="itemResolucion" action="guardar">
			<h2>Registro de Item Resolución</h2>
			<div class="form-group">
				<label for="item">Item</label>
				<form:select path="item.id" itemLabel="nombre"
					cssClass="form-control" items="${listItem}" itemValue="id"
					required="required"></form:select>
			</div>
			<div class="form-group">
				<label for="campo">Campo</label>
				<form:textarea path="campo" class="form-control" placeholder="Campo"></form:textarea>
			</div>
			<button type="submit" class="btn btn-primary">Guardar</button>
			<form:hidden path="id" />
		</form:form>
	</div>
</div>