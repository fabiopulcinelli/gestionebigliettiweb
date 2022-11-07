<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="it" class="h-100" >
<header>
  <!-- Fixed navbar -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-warning" aria-label="Eighth navbar example">
    <div class="container">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample07">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active text-dark" aria-current="page" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled text-dark" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-dark" href="#" id="dropdown07" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown07">
              <li><a class="dropdown-item " href="ListBigliettiServlet">Lista Elementi</a></li>
              <li><a class="dropdown-item" href="PrepareInsertBigliettoServlet">Inserisci Nuovo</a></li>
              <li><a class="dropdown-item" href="PrepareSearchBigliettoServlet">Ricerca</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="col-md-3 text-end">
        <ul class="nav navbar-nav navbar-right">
            
            <c:if test="${userInfo != null}">
            	<li><p class="navbar-text text-dark">Utente: ${userInfo.username }(${userInfo.nome } ${userInfo.cognome })
   				<a class="btn btn-warning text-danger" href="<%= request.getContextPath()%>/LogoutServlet">Logout</a></p> 
			</c:if>
			<c:if test="${userInfo == null}">
   				<a class="btn btn-warning text-danger" href="<%= request.getContextPath()%>/login.jsp">Login</a></p> 
			</c:if>
            </li>
          </ul>
      </div>
    </div>
  </nav>

  
  
</header>