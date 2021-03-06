<%@page import="com.ipartek.formacion.nidea.pojo.Material"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>

<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>


<%
	// recoger atributo del controlador, si es que existe
	Mesa mesa = (Mesa)request.getAttribute("mesa");
	ArrayList<Material> materiales = (ArrayList<Material>)request.getAttribute("materiales");
	
	
%>

<div class ="container">
	<div class="row">
	
	<div class="col-sm-6">
		<form action="generar-mesa" method="post">
		<div class="form-group">
			<label for="patas">Numero de patas:</label>
			<input type="number" name="patas" class="form-control" value="<%=mesa.getNumeroPatas()%>" required>
		</div>
		<div class="form-group">
			<label for="dimension">Dimension en m2:</label>
			<input type="number" name="dimension" value="<%=mesa.getDimension()%>" required class="form-control">
		</div>
		<div class="form-group">
			<label for="material">Selecciona Material:</label>
			<select name="material">
				<% for ( int i=0; i < materiales.size(); i++ ) { 
					Material m= materiales.get(i);
				%>
					<option value="<%=materiales.get(i).getId()%>" 
					        <%=(mesa.getMaterial().getId()==m.getId())?"selected":""%>>
						<%=m.getNombre()%> - <%= m.getPrecio()%>&euro;
					</option>
				<% } %>
			</select>
		</div>
		<div class="">
			<p>Color: 
			   <input type="color" value="<%=mesa.getColor()%>" disabled>
			</p>
			
			<p>¿Quieres Personalizar el Color ? 
				<input type="checkbox" name="custom" onclick="showColor()" id="custom" <%=(mesa.isCustom())?"checked":""%>>
				<input type="color" name="color" id="color" value="<%=mesa.getColor()%>"> 
			</p>
		</div>
		
			<input type="submit" value="Calcular Precio">
			
			
		</form>
	</div>
	
	<div class="col-sm-6">	
	
		<p>Precio: <%=mesa.getPrecio()%> &euro;</p> 
	
		<svg version="1.1" id="mesa" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			 style="width:50%;"	
			 viewBox="0 0 33 33" style="enable-background:new 0 0 33 33;" xml:space="preserve">
		<g>
			<path d="M32.5,10.368h-32c-0.276,0-0.5-0.224-0.5-0.5V6.437c0-0.276,0.224-0.5,0.5-0.5h32c0.276,0,0.5,0.224,0.5,0.5v3.432
				C33,10.145,32.776,10.368,32.5,10.368z M1,9.368h31V6.937H1V9.368z"/>
			<path d="M3.136,27.063H1.668c-0.147,0-0.288-0.065-0.383-0.179s-0.135-0.263-0.109-0.408L4.112,9.781
				c0.042-0.238,0.249-0.413,0.492-0.413H8.03c0.157,0,0.306,0.074,0.4,0.2c0.094,0.126,0.124,0.289,0.079,0.44L3.615,26.704
				C3.553,26.917,3.357,27.063,3.136,27.063z M2.264,26.063h0.498l4.601-15.695H5.024L2.264,26.063z"/>
			<path d="M30.471,27.063h-1.469c-0.222,0-0.417-0.146-0.479-0.359l-4.894-16.695c-0.045-0.151-0.015-0.314,0.079-0.44
				c0.095-0.126,0.243-0.2,0.4-0.2h3.426c0.243,0,0.45,0.175,0.492,0.413l2.937,16.695c0.025,0.146-0.015,0.295-0.109,0.408
				S30.618,27.063,30.471,27.063z M29.376,26.063h0.499l-2.761-15.695h-2.338L29.376,26.063z"/>
			<path d="M25.069,13.646h-18c-0.276,0-0.5-0.224-0.5-0.5s0.224-0.5,0.5-0.5h18c0.276,0,0.5,0.224,0.5,0.5
				S25.346,13.646,25.069,13.646z"/>	
				
		</g>
		</svg>
	</div>	
	</div>
</div>
<!-- class="row" -->

<script>
	
	showColor();
	
	function showColor(){
		
		var custom = document.getElementById('custom');
		var color = document.getElementById('color');
		
		if ( custom.checked ){
			color.style.display = 'block';
		}else{
			color.style.display = 'none';
		}		
	}	
	
</script>
<jsp:include page="templates/footer.jsp"></jsp:include>
</div>