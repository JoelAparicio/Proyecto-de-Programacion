<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="Estilos.css" rel="stylesheet" type="text/css">
<title>Registro de Programacion</title>
</head>
<body>

<h1>Registro de Programacion:</h1> <br>

<%@page import="java.sql.*"%> 


<% 
	String nombre = request.getParameter("fname");
	String apellido = request.getParameter("lname");
	String cedula = request.getParameter("cedula");
	String curso = request.getParameter("curso");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario_semestral","root","");
	Statement dbstatement = dbconect.createStatement();
    String InsertSQL = "Insert Into registro_programacion(Nombre, Apellido, Cedula, Curso) Values('" +nombre+ "','" +apellido+ "','" +cedula+ "','" +curso+ "')";
    dbstatement.executeUpdate(InsertSQL);
    
%>

           <h4 class="alterh4">Registro exitoso, Muchas Gracias!!</h4>

           


</body>
</html>