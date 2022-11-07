<!doctype html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Cancellazione elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Sicuro di voler eliminare questo elemento?</h5>
					    </div>
					    <c:set var="bigliettoInPagina" value = "${delete_biglietto_attr}"/>
					
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza</dt>
							  <dd class="col-sm-9">${bigliettoInPagina.provenienza}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Destinazione:</dt>
							  <dd class="col-sm-9">${bigliettoInPagina.destinazione}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9">${bigliettoInPagina.prezzo}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data di Arrivo:</dt>
							  <fmt:formatDate pattern = "yyyy-MM-dd" value = "${bigliettoInPagina.data}" var="data"/>
							  <dd class="col-sm-9">${data}</dd>
					    	</dl>
					    	
					    </div>
					    
					    <div class='card-footer' >
					    	<div class='row'>
					    	 <div class='col '>
					        	<a href="ListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					          	  <i class='fa fa-chevron-left'></i> Back
					       		 </a>
					       	 </div>
					        
					        <div class='col-1 '>
						        <form action="ExecuteDeleteBigliettoServlet" method="post">
									<input type="submit" value="Elimina" class='btn btn-outline-danger fa fa-chevron-left text-danger' style='width:80px'>
									<input type="hidden" name="idBiglietto" value="${bigliettoInPagina.id}">
								</form>
							</div>
							</div>
					    </div>
					<!-- end card -->
					</div>	

			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
</body>
</html>