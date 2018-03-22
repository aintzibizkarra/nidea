<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
	<% 
		//Striplet <%
		//Varias sentencias
		String nombre = "pepe";
		String hora = "10:38"; 
	%>
<div class="container">	
	<h2>Hello <%=nombre%></h2>
	<p><%=hora%></p>
	<a href="generar-mesa">¿Quieres comprar una mesa?</a>
	
	<jsp:include page="templates/footer.jsp"></jsp:include>
</div>
