<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAOMateria"%>
<%@page import="beans.Materia"%>
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
        <title>MOSTRAR MATERIAS</title>
        
    </head>
    <body>
        <form id="frmMaterias" action="SMateria" method="POST">
              
        <h3>REGISTRO DE MATERIAS</h3>
        <!--<th><a href="SAlumno?accion=nuevo"><button>Nuevo Alumno</button></a></th>-->
    <table>
          <tr>
            <th><a href="#" onclick="procesar('nuevomat','')">Nuevo Materia</a></th>
            <th><a href="SVista">Regresar</a></th>
          </tr>
   </table>
        <br>
        
        <div>
        <table border="0">
                <thead>
                    <tr>
                        <th>CLAVE_MATERIAS</th>
                        <th>NOMBRE</th>
                        <th>CUATRIMESTRE</th>
                        <th colspan="2">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    DAOMateria daoMateria = new DAOMateria();
                    ArrayList<Materia> lista = daoMateria.mostrarmat();
                    for(int i=0; i<lista.size(); i++)
                    {
                     Materia materia=new Materia();
                     materia = lista.get(i);
                    %>
                    <tr>
                        <td><%=materia.getClavemat()%></td>
                        <td><%=materia.getNombre()%></td>
                        <td><%=materia.getCuatrimestre()%></td>
                       <%-- <td><a href="SMateria?accion=editarmat&clavemat=<%=materia.getClavemat()%>"><button>EDITAR</button></a></td>--%>
                        <td><a href="#" onclick="procesar('editarmat','<%=materia.getClavemat()%>')"><button>EDITAR</button></a></td> 
                       <%--<td><a href="SMateria?accion=eliminar&clavemat=<%=materia.getClavemat()%>"><button>ELIMINAR</button></a></td>--%>
                        <td><a href="#" onclick="procesar('eliminar','<%=materia.getClavemat()%>')"><button>ELIMINAR</button></a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
      </form>
                <script>
                    function procesar(accion,clavemat)
                    {
                        var tfAccion = document.createElement("input");
                        tfAccion.name = "tfAccion";
                        tfAccion.type = "hidden";
                        tfAccion.value = accion;
                        
                        var tfClavemat = document.createElement("input");
                        tfClavemat.name = "tfClavemat";
                        tfClavemat.type = "hidden";
                        tfClavemat.value = clavemat;
                        
                        var padre = document.getElementById("frmMaterias");
                        padre.appendChild(tfAccion);
                        padre.appendChild(tfClavemat);
                        
                        padre.submit();
                    }
                </script>
                
    </body>
</html>
