<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<div class="col-md-6">
	<form:form modelAttribute="itemresol" action="guardar">
		<h2>Registro de Item por resolucion</h2>
		<div class="form-group">
			<SELECT NAME="Item" MULTIPLE SIZE=5> 
			<OPTION VALUE="Item"> 
			</SELECT>
			<SELECT NAME="Resolucion" MULTIPLE SIZE=5> 
			<OPTION VALUE="Resolucion"> 
			</SELECT>
			<label for="exampleInputEmail1">Campo</label>
			
			<form:input path="campo" class="form-control" placeholder="Campo"
				autofocus="autofocus" />
		</div>
		<button type="submit" class="btn btn-primary">Guardar</button>
	</form:form>
</div>

