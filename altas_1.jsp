<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>

<%! String Curp = null;%>
<%! String nombress = null; %>
<%! String apellidom = null; %>
<%! String apellidop = null; %>
<%! String correo = null; %>
<%! String telefono = null; %>



<%! String Numtarjeta = null; %>
<%! String tresnum = null; %>
<%! String fechaven = null; %>
<%! String monto = null; %>
<%! String zona = null; %>

<%!Statement stmt = null;%>
<%!ResultSet rs = null; %>
<%!Connection conn = null; %>
<%!String query = "SELECT * FROM cliente"; %>
<HTML>

    <HEAD>
        <link rel="stylesheet" href="../css/estilo.css">
        <TITLE>Donacion </TITLE> 

<%
//conexion a la base de datos 
    

    Class.forName("com.mysql.jdbc.Driver").newInstance ();
    conn = DriverManager.getConnection("jdbc:mysql://localhost/escuelajdb2?user=root&password=n0m3l0");
    stmt = conn.createStatement();
               
    
    //TABLA CLIENTES
    Curp = request.getParameter("Curpform");       
   

    nombress = request.getParameter("nombressfrom");
    apellidop = request.getParameter("apellidopform");
    apellidom = request.getParameter("apellidomform");
   
    correo = request.getParameter("correoform");
    telefono = request.getParameter("telefonoform");
    

    stmt.executeUpdate("INSERT INTO cliente VALUES("+"'" +Curp + "','"+ nombress + "','"+ apellidop + "','"+ apellidom+"','"+ telefono + "','"+ correo + "')");
    
    //TABLA DONACIONES
    
    
    Numtarjeta= request.getParameter("Numtarjetaform");
    tresnum = request.getParameter("tresform");
    fechaven = request.getParameter("fechavenform");
    monto = request.getParameter("montoform");
    zona = request.getParameter("zona");
    
    stmt.executeUpdate("INSERT INTO tarjeta VALUES("+"'"+Numtarjeta + "','"+ tresnum + "','"+ fechaven + "','" +  monto +"','"+zona+ "')");
    out.println("<script>alert('Se realizo con exito la donacion')</script>");
    
    rs = stmt.executeQuery(query);
    
    
    
%>

    <BODY>
     <h1 href="../index.html">Inicio</h1>
   
        <section class="Donaciones">
            <h4>Donaciones</h4>
            



                

                <p><a href="../html/Nature.html">Volver al Menu</a></p>
               


               
            </form>
        </section>
     
     </BODY>
    </HTML>
       