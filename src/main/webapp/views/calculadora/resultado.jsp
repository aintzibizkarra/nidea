<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>

<div class="container">
	<h1>Resultado de la operación </h1>
	<%
		float result = (Float)request.getAttribute("resultado");
	%>
	
	<p>Resultado de la operacion <%=result %></p>
	
</div>




<jsp:include page="/templates/footer.jsp"></jsp:include>