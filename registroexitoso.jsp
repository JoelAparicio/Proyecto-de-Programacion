<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro exitoso de estudiante</title>
<link rel="stylesheet" href="./Estilo-Seccion.css">
</head>
<body>
<%@ page import="java.sql.*"%>

<div class="contenedor-Seccion">
    <div class="contenedor-formulario">
        <img src="./logo.png" id="logop">
        <h1>¡Registro exitoso!</h1>
        <form class="Seccion-form">
            <div class="Seccion-input">
                <p><br> Ya tienes una cuenta ahora puedes iniciar sección<br><br></p>
            </div> 
            <div class="Seccion-control">
                    <button type="button" id="boton-volver"> <a href="./1. Pagina principal.html">Volver</a> </button> 
            </div> 
            </div>
        </form> 
    </div> 
</div>

<%
    String Nombre = request.getParameter("nombre");
    String Apellido = request.getParameter("apellido");
    String Contraseña = request.getParameter("contraseña");
    String Edad = request.getParameter("edad");

    Class.forName("com.mysql.jdbc.Driver");
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario_semestral","root","");
    Statement dbstatement = dbconect.createStatement();
    String InsertSQL = "Insert Into estudiantes (nombre,apellido,contraseña,edad) Values('"+nombre+"','"+apellido+"','"+contraseña+"','"+edad+"')";
    dbstatement.executeUpdate(InsertSQL);
%>

</body>
</html>