<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
<jsp:include page="templates/alert.jsp"></jsp:include>


<div id="login">

  <form class="form-signin" action="login" method="post" id="formulario">     
	<div class="form-label-group">
         <label for="usuario">Nombre Usuario</label><input type="text" class="form-control" name="usuario" placeholder="Nombre Usuario" required autofocus>
    </div>
	<div class="form-label-group">
      	<label for="password">Contraseņa</label>
        <input type="password" name="password" class="form-control" placeholder="Contraseņa" required>
     </div>
    	<br>
   	 <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
</form>

</div>
<jsp:include page="templates/footer.jsp"></jsp:include>