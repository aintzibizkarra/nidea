<%@page import="com.ipartek.formacion.nidea.model.MaterialDAO"%>
<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>
<%@page import="com.ipartek.formacion.nidea.pojo.Material"%>
<%@page import="java.util.ArrayList"%>

<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/alert.jsp"></jsp:include>

<%
	Mesa mesa = (Mesa)request.getAttribute("mesa");
	ArrayList<Material> materiales = (ArrayList<Material>)request.getAttribute("materiales");
%>

<table>
<tr>

	<td>ID</td>
	<td>Nombre</td>
	<td>Precio</td>
</tr>

</table>

<jsp:include page="/templates/footer.jsp"></jsp:include>
