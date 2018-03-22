<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>

<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>


<%
	//recoger atributo del controlador, si es que existe
	Mesa mesa = (Mesa)request.getAttribute("mesa");
	
	
%>
<div class="container">
<p> Precio:<%=mesa.getPrecio() %> &euro;</p>
<form action="generar-mesa" metod="post">
	<label for="patas"><b>Numero de patas:</b></label>
	<input type="number" required value ="4" name="patas">
	
	<label for="dimensiones"><b>Dimensiones:</b></label>
	<input type="number" value ="1" name="dimensiones">
	
	<label for="color"><b>Color:</b></label>
	<input type="Color" name="color" value="#ffffff">
	<input type="checkbox"  name="custom" value="false"><i>Custom</i>
	
	<label for="material"><b>Material:</b></label>
	<select name="material">
	  <option value="1">Madera</option>
	  <option value="2">Acero</option>
	  <option value="3">Aluminio</option>
	  <option value="4">Plastico</option>
	</select>
	
	<input type="submit" value="Calcular Precio" >
		
</form>

<jsp:include page="templates/footer.jsp"></jsp:include>
</div>