<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAOAlumno"%>
<%@page import="beans.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% String usuario =(String) request.getSession().getAttribute("usuario");
if(usuario==null)
    response.sendRedirect("IIndex");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vistas/stylu.css">
        <title>MOSTRAR alumnos</title>
        
    </head>
    <body>
             <form id="frmAlumnos" action="SAlumno" method="POST">
            <h3>REGISTRO DE ALUMNOS</h3>
            
               <!--<th><a href="SAlumno?accion=nuevo"><button>Nuevo Alumno</button></a></th>-->
    <table>
          <tr>
            <th><a href="#" onclick="procesar('nuevo','')" style="background-color: graytext; border:1px;  text-decoration: none; border-collapse: collapse; border-width: 3px; border-radius: 4px; color: black;">Nuevo Alumno</a></th>
            <th><a href="SVista" style="background-color: graytext; border:1px; text-decoration: none; border-radius: 4px; color: black;">Regresar</a></th>
          </tr>
   </table>
        <br>
        <div>
        <table border="0">
                <thead>
                    <tr>
                        <th>MATRICULA</th>
                        <th>NOMBRE_COMPLETO</th>
                        <th>GENERO</th>
                        <th colspan="2">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    
                     <%
                    DAOAlumno daoAlumno = new DAOAlumno();
                    ArrayList<Alumno> lista = daoAlumno.mostrar();
                    for(int i=0; i<lista.size(); i++)
                    {
                     Alumno alumno=new Alumno();
                     alumno = lista.get(i);
                    %>
                    <tr>
                        <td><%=alumno.getMatricula()%></td>
                        <td><%=alumno.getNombre()%></td>
                        <td><%=alumno.getGenero()%></td>
                       <%-- <td><a href="SAlumno?accion=editar&matricula=<%=alumno.getMatricula()%>"><button>EDITAR</button></a></td> --%>
                        <td>
                         <td><a href="#" onclick="procesar('editar','<%=alumno.getMatricula()%>')"><button>EDITAR</button></a></td> 
                                    
                        <%--<td><a href="SAlumno?accion=eliminar&matricula=<%=alumno.getMatricula()%>"><button>ELIMINAR</button></a></td>--%>
                        <td><a href="#" onclick="procesar('eliminar','<%=alumno.getMatricula()%>')"><button>ELIMINAR</button></a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        </form>
            <script>
                    function procesar(accion,matricula)
                    {
                        var tfAccion = document.createElement("input");
                        tfAccion.name = "tfAccion";
                        tfAccion.type = "hidden";
                        tfAccion.value = accion;
                        
                        var tfMatricula = document.createElement("input");
                        tfMatricula.name = "tfMatricula";
                        tfMatricula.type = "hidden";
                        tfMatricula.value = matricula;
                        
                        var padre = document.getElementById("frmAlumnos");
                        padre.appendChild(tfAccion);
                        padre.appendChild(tfMatricula);
                        
                        padre.submit();
                    }
                </script>
    </body>
</html>

