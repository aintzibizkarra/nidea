<%@page import="com.ipartek.formacion.nidea.controller.CalculadoraController"%>
<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/alert.jsp"></jsp:include>

<div class="container">
<h1>CALCULADORA</h1>
<%
	String msg =(String)request.getAttribute("msg");
	if (msg !=null){
		out.print(msg);
	}
%>
<form action="calculadora" method="post">
	<div class="form-group">
	    <label for="num1">Primer Numero</label>
	    <input type="text" class="form-control"  name="num1">
	</div>
	<div class="form-group">
	    <label for="num2">Segundo Numero</label>
	    <input type="text" class="form-control"  name="num2">
	</div>
	<select name="operacion">
		<option value="<%=CalculadoraController.OP_SUMAR%>">Sumar</option>
		<option value="<%=CalculadoraController.OP_RESTAR%>">Restar</option>
		<option value="<%=CalculadoraController.OP_MULTIPLICAR%>">Multiplicar</option>
		<option value="<%=CalculadoraController.OP_DIVIDIR%>">Dividir</option>
	</select>
	<br>
	<br>
		<input type="submit" class="btn btn-block btn-outline-primary" value="Calcular">
	
</form>

</div>

<jsp:include page="/templates/footer.jsp"></jsp:include>