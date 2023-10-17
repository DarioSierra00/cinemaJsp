<%@page import="com.jacaranda.model.Cinema"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jacaranda.model.Cinema"%>
    <%@page import="com.jacaranda.repository.CineRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<% //Intento ver si ha puesto los datos para añadir un Cine
	try{
		Cinema c = new Cinema(request.getParameter("cine"), request.getParameter("ciudad"), request.getParameter("direccion"));
		CineRepository.deleteCInema(c);
	}catch (Exception e){
		
	}
%>
<form>
  <div class="form-group row">
    <label for="text" class="col-4 col-form-label">Cine</label> 
    <div class="col-8">
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <i class="fa fa-address-card"></i>
          </div>
        </div> 
        <input id="text" name="cine" type="text" class="form-control">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="text1" class="col-4 col-form-label">Ciudad</label> 
    <div class="col-8">
      <input id="text1" name="ciudad" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="text2" class="col-4 col-form-label">Direccion</label> 
    <div class="col-8">
      <input id="text2" name="direccion" type="text" class="form-control">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</body>
</html>