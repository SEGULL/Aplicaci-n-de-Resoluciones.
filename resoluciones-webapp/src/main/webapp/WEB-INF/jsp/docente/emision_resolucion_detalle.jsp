<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<div id="pdf">

	<c:forEach items="${items}" var="i">
		<p>${i.campo}</p>
	</c:forEach>
	<table>
		<caption>Datos Personales</caption>
		<tr>
			<td>APELLIDOS Y NOMBRES</td>
			<td>:</td>
			<td>${docente.apellidoPat}${docente.apellidoMat},
				${docente.nombres}</td>
		</tr>
		<tr>
			<td>DOC. DE IDENTIDAD</td>
			<td>:</td>
			<td>${docente.dni}</td>
		</tr>
		<tr>
			<td>FECHA NACIMIENTO</td>
			<td>:</td>
			<td>${docente.fechaNac}</td>
		</tr>
		<tr>
			<td>CODIGO MODULAR</td>
			<td>:</td>
			<td>${docente.codigoModular}</td>
		</tr>
		<tr>
			<td>REGIMEN PENSIONARIO</td>
			<td>:</td>
			<td>${docente.nombreReg}</td>
		</tr>
	</table>

</div>