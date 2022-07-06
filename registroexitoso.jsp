<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<META HTTP-EQUIV="Refresh" CONTENT="0;URL=3.Pagina registro exitoso.html">
<title>Registro exitoso de estudiante</title>
</head>
<body>


<%@ page import="java.sql.*"%>
<%
    String Nombre = request.getParameter("nombre");
    String Apellido = request.getParameter("apellido");
    String Contraseña = request.getParameter("contrasena");
    String Edad = request.getParameter("edad");

    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario_semestral","root","");
    Statement dbstatement = dbconect.createStatement();
    String InsertSQL = "Insert Into usuario (nombre,apellido,contraseña,edad) Values('"+Nombre+"','"+Apellido+"','"+Contraseña+"','"+Edad+"')";
    dbstatement.executeUpdate(InsertSQL);
%>

</body>
</html>