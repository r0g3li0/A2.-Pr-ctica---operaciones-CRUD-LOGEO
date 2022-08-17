<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAOMaestro"%>
<%@page import="beans.Maestro"%>
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
        <title>MOSTRAR MAESTROS</title>
        
    </head>
    <body>
             
    <form id="frmMaestros" action="SMaestro" method="POST">
            <h3>REGISTRO DE MAESTROS</h3>
               
    <table>
          <tr>
            <th><a href="#" onclick="procesar('nuevoma','')">Nuevo Maestro</a></th>
            <th><a href="SVista">Regresar</a></th>
          </tr>
   </table>
       
    <div>
        <table border="0">
                <thead>
                    <tr>
                        <th>IDENTIFICADOR</th>
                        <th>NOMBRE</th>
                        <th>PATERNO</th>
                        <th>MATERNO</th>
                        <th colspan="2">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    DAOMaestro daoMaestro = new DAOMaestro();
                    ArrayList<Maestro> lista = daoMaestro.mostrarma();
                    for(int i=0; i<lista.size(); i++)
                    {
                     Maestro maestro=new Maestro();
                     maestro = lista.get(i);
                    %>
                    <tr>
                        <td><%=maestro.getId()%></td>
                        <td><%=maestro.getNombre()%></td>
                        <td><%=maestro.getPaterno()%></td>
                        <td><%=maestro.getMaterno()%></td>
                       <%--<td><a href="SMaestro?accion=editarma&id=<%=maestro.getId()%>"><button>EDITAR</button></a></td>--%>
                        <td><a href="#" onclick="procesar('editarma','<%=maestro.getId()%>')"><button>EDITAR</button></a></td> 
                        
                       <%--<td><a href="SMaestro?accion=eliminar&id=<%=maestro.getId()%>"><button>ELIMINAR</button></a></td>--%>
                        <td><a href="#" onclick="procesar('eliminar','<%=maestro.getId()%>')"><button>ELIMINAR</button></a></td>     
                        
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
                </form>
            <script>
                    function procesar(accion,id)
                    {
                        var tfAccion = document.createElement("input");
                        tfAccion.name = "tfAccion";
                        tfAccion.type = "hidden";
                        tfAccion.value = accion;
                        
                        var tfId = document.createElement("input");
                        tfId.name = "tfId";
                        tfId.type = "hidden";
                        tfId.value = id;
                        
                        var padre = document.getElementById("frmMaestros");
                        padre.appendChild(tfAccion);
                        padre.appendChild(tfId);
                        
                        padre.submit();
                    }
                </script>
                
    </body>
</html>
