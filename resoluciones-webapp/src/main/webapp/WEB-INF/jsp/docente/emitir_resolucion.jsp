<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<div class="col-md-12">

	<div class="col-md-12">

		<form:form modelAttribute="emision" action="guardar">
			<h2>Emisi�n de Resoluci�n</h2>
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Datos Principales</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label for="codresolucion">C�digo</label>
							<form:input path="codresolucion" class="form-control"
								placeholder="C�digo" autofocus="autofocus" required="required" />
						</div>
						<div class="form-group">
							<label for="fechaemitida">Fecha Emitida</label>
							<form:input type="date" path="fechaemitidaS" class="form-control"
								placeholder="Fecha de Emisi�n" required="required" />
						</div>
						<div class="form-group">
							<label for="resolucion.id">Resoluci�n</label>
							<form:select path="resolucion.id" cssClass="form-control"
								items="${resoluciones}" itemLabel="nombre" itemValue="id"></form:select>
						</div>
					</div>
				</div>

			</div>
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Detalle</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<label for="codresolucion">Nombre de la Instituci�n</label>
							<form:input path="detalle.nominseducativa" class="form-control"
								placeholder="Nombre de la Instituci�n" required="required" />
						</div>
						<div class="form-group">
							<label for="codresolucion">Lugar de la Instituci�n</label>
							<form:input path="detalle.lugarinstitucion" class="form-control"
								placeholder="Lugar de la Instituci�n" required="required" />
						</div>
						<div class="form-group">
							<label for="codresolucion">Cargo a desempe�ar</label>
							<form:input path="detalle.cargodesempeniar" class="form-control"
								placeholder="Cargo a desempe�ar" required="required" />
						</div>
						<div class="form-group">
							<label for="codresolucion">Motivo de la Vacante</label>
							<form:input path="detalle.motvacante" class="form-control"
								placeholder="Motivo de la Vacante" required="required" />
						</div>
						<div class="form-group">
							<label for="codresolucion">C�digo de Plaza</label>
							<form:input path="detalle.codplaza" class="form-control"
								placeholder="C�digo de Plaza" required="required" />
						</div>
						<div class="form-group">
							<label for="codresolucion">Vigencia en el Cargo</label>
							<form:input type="number" min="0" path="detalle.vigenencargo"
								class="form-control" placeholder="Vigencia en el Cargo"
								required="required" />
						</div>

						<div class="form-group">
							<label for="codresolucion">Cargo Actual</label>
							<form:input path="detalle.cargoactual" class="form-control"
								placeholder="Cargo Actual" required="required" />
						</div>

					</div>
				</div>
			</div>
			<div>
				<button type="submit" class="btn btn-primary col-md-6">Guardar</button>
				<form:hidden path="id" />
			</div>

		</form:form>

	</div>

</div>