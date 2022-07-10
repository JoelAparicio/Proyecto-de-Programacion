<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>PRACTICA JSP</title>
</head>

<body>
<%@ page import="java.sql.*"%>
    
    <% 
    String Nombre = request.getParameter("nombre");
    String Contraseña = request.getParameter("contrasena");

      Class.forName("com.mysql.jdbc.Driver");
      Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/formulario_semestral","root","");
      Statement dbstatement = dbconect.createStatement();
     try
      {
    	  PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM usuario WHERE nombre=? AND contraseña=?");
    	  consultaP.setString(1, Nombre);
    	  consultaP.setString(2, Contraseña);

    	  ResultSet resultado = consultaP.executeQuery();
      
    	  if(resultado.next()){
    		  out.println("USUARIO CORRECTO");%>
    		  
    		  <head>
                <meta http-equiv="refresh" content="1; url=http://localhost:8088/Programaci%C3%B3n_2/Semestral/Prueba Semestral/Estructura-Inicio.html">
           	</head>
           	
           <% 
    	  }
           else{
    		  out.println("USUARIO INCORRECTO");%>
    		  
    		  
      		<head>
                <meta http-equiv="refresh" content="1; url=http://localhost:8088/Programaci%C3%B3n_2/Semestral/Prueba Semestral/4. Pagina de sesion fallida.html">
           	</head>
           	
           	<% }
           
           } 	
           	
         
       
      		catch (Exception e)
      {
    		  out.println( "ERROR--<br>");
    		  out.println("--Consulta Invalida-");
      }
             %>

      </body>
</html>