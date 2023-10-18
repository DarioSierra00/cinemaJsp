<%@page import="java.util.List"%>
<%@page import="com.jacaranda.model.Cinema"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jacaranda.model.Cinema"%>
    <%@page import="com.jacaranda.repository.CineRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado Cine</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<% //Intento ver si ha puesto los //datos para añadir un Cine
	List<Cinema> result = null;
	try{
		result = CineRepository.getCinemas();
	}catch (Exception e){
		
	}
%>
<table class="table">
	<thread>
		<tr>
			<th scope="col">Cine</th>
			<th scope="col">Direccion</th>
			<th scope="col">Ciudad</th>
		</tr>
	</thread>
	<% for (Cinema c: result){%>
			<tr>
				<td><%=c.getCine() %></td>
				<td><%=c.getDireccion_cine() %></td>
				<td><%=c.getCiudadCine() %></td>
				<td><form action="./editarCinema.jsp">
					<input type="text" name="cine" value='<%=c.getCine() %>' hidden>
					<button type="submit">Edit</button>
				</form>
				</td>
				<td>
				<form action="./deleteCine.jsp">
				<input type="text" name="cine" value='<%=c.getCine() %>' hidden>
				<button type="submit">Delete</button>		
				</form>
				</td>
			</tr>
		
	<% }%>
</table>

</body>
</html>