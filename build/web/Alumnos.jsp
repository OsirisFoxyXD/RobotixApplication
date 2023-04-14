<%-- 
    Document   : Alumnos
    Created on : 13 abr 2023, 3:05:08
    Author     : vruiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="causa.when.Datos"%>
<%@page import="causa.when.Negocio"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administradores</title>
        <link rel ="stylesheet" href="style5.css">
        </head>
    <body>
        <div class="containerPrincipalM">
            <a href="AltasComputadoras.jsp"><button class="botonA">Altas</button></a>
             <%
            int i = 0;
            List<Datos> lista = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
        %>
        <table border="1">
            <thead>
            <tr>
                <th>Numero de computadora</th>
                <th>Laboratorio</th>
                <th>Horario de Registro</th>
                <th>Registrado por</th>
            </tr>
            <thead>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            
            <tbody>
            <tr>
                <td><%=datos.getNumeroPC()%></td>
                <td><%=datos.getLab()%></td>
                <td><%=datos.getHora( )%></td>
                <td><%=datos.getAlumno()%></td>
            </tr>
            </tbody>
            <%
                }
              }
            %>
        </table>
        </div>
    </body>
</html>
