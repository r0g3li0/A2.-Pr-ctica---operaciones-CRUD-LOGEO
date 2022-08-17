<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%  String usuario = (String) request.getSession().getAttribute("usuario");
    if (usuario==null)
    response.sendRedirect("IIndex");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="vistas/stylusindexx.css" />
        <title>Vista</title>
    </head>
    <body><br><br><br><br><br>
      <div class="logo">
        <table style="text-align: center"><tr>
               <th><img src="vistas/logo1.png" width="250" height="90"> </th>
               <th><h3>SISTEMA ESCOLAR</h3></th>
               <th><img src="vistas/SEP.png" width="250" height="90"> </th>
             </tr>
             <tr style="background-color: white">
                <td><a href="SAlumno"><button>ALUMNOS</button></a><br></td>
                <td><a href="SMaestro"><button>MAESTRO</button></a><br></td>
                <td><a href="SMateria"><button>MATERIA</button></a><br></td>
              </tr> 
              <tr>
                  <td colspan="3" style="background-color: whitesmoke"><img src="vistas/fondo..jfif" width="800" height="350"></td 
              </tr>
             
        </table>
      </div>
    </body>
</html>
