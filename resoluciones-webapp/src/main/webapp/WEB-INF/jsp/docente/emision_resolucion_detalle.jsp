<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<script src="../../bootstrap/js/jspdf.debug.js"></script>

<div id="pdf">

	<c:forEach items="${items}" var="i">
		<p>${i.campo}</p>
	</c:forEach>
	<table>
		<caption>Datos Personales</caption>
		<tr>
			<td>APELLIDOS Y NOMBRES</td>
			<td>:</td>
			<td>${docente.apellidoPat} ${docente.apellidoMat}, ${docente.nombres}</td>
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
<button class="btn btn-primary" onclick="demoFromHTML()">Descargar</button>

<div id="bypassme"></div>

<script>
	function demoFromHTML() {
		var pdf = new jsPDF('p', 'pt', 'letter');
		// source can be HTML-formatted string, or a reference
		// to an actual DOM element from which the text will be scraped.
		source = $('#pdf')[0];

		// we support special element handlers. Register them with jQuery-style 
		// ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
		// There is no support for any other type of selectors 
		// (class, of compound) at this time.
		specialElementHandlers = {
			// element with id of "bypass" - jQuery style selector
			'#bypassme' : function(element, renderer) {
				// true = "handled elsewhere, bypass text extraction"
				return true
			}
		};
		margins = {
			top : 80,
			bottom : 60,
			left : 40,
			width : 522
		};
		// all coords and widths are in jsPDF instance's declared units
		// 'inches' in this case
		pdf.fromHTML(source, // HTML string or DOM elem ref.
		margins.left, // x coord
		margins.top, { // y coord
			'width' : margins.width, // max width of content on PDF
			'elementHandlers' : specialElementHandlers
		},

		function(dispose) {
			// dispose: object with X, Y of the last line add to the PDF 
			//          this allow the insertion of new lines after html
			pdf.save('resolucion.pdf');
		}, margins);
	}
</script>