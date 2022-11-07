<!doctype html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Modifica elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
					  ${errorMessage}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-danger alert-dismissible fade show d-none" role="alert">
					  Esempio di operazione fallita!
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-info alert-dismissible fade show d-none" role="alert">
					  Aggiungere d-none nelle class per non far apparire
					   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
			  
			  <div class='card'>
				    <div class='card-header'>
				        <h5>Modifica questo elemento</h5> 
				    </div>
				    <div class='card-body'>
		
							<form method="post" action="ExecuteModificaBigliettoServlet" class="row g-3" novalidate="novalidate">
							
								<c:set var="bigliettoInPagina" value = "${modifica_biglietto_attr}"/>
							
								<div class="col-md-6">
									<label for="provenienza" class="form-label">Provenienza <span class="text-danger"></span></label>
									<input type="text" name="provenienza" id="provenienza" class="form-control" placeholder="Inserire il provenienza"  
										value="${bigliettoInPagina.provenienza}" >
								</div>
								
								<div class="col-md-6">
									<label for="destinazione" class="form-label">Destinazione <span class="text-danger"></span></label>
									<input type="text" name="destinazione" id="destinazione" class="form-control" placeholder="Inserire la destinazione"  
										value="${bigliettoInPagina.destinazione}" >
								</div>
							
								<div class="col-md-6">
									<label for="prezzo" class="form-label">Prezzo <span class="text-danger"></span></label>
									<input type="number" class="form-control" name="prezzo" id="prezzo" placeholder="Inserire prezzo" 
									value="${bigliettoInPagina.prezzo}" >
								</div>
								
								<div class="col-md-3">
									<label for="data" class="form-label">Data<span class="text-danger"></span></label>
									<fmt:formatDate pattern = "yyyy-MM-dd" value = "${bigliettoInPagina.data}" var="data"/>
									<input class="form-control"  name="data" id="data" type="date" placeholder="dd/MM/yy" title="formato : gg/mm/aaaa" 
										value="${data}"  />
								</div>
								
								<input type="hidden" name="id" value="${bigliettoInPagina.id}">
								
							<div class="col-12">
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-warning">Conferma</button>
							</div>
		
						</form>
				    
					<!-- end card-body -->			   
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