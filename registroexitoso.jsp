<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script languaje="JavaScript">
location.href=’./2. Pagina registro exitoso.html’;
</script>
<title>Registro exitoso de estudiante</title>
</head>
<body>


<%@ page import="java.sql.*"%>
<%
    String Nombre = request.getParameter("nombre");
    String Apellido = request.getParameter("apellido");
    String Contraseña = request.getParameter("contraseña");
    String Edad = request.getParameter("edad");

    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario_semestral","root","");
    Statement dbstatement = dbconect.createStatement();
    String InsertSQL = "Insert Into usuario (nombre,apellido,contraseña,edad) Values('"+nombre+"','"+apellido+"','"+contraseña+"','"+edad+"')";
    dbstatement.executeUpdate(InsertSQL);
%>

</body>
</html>