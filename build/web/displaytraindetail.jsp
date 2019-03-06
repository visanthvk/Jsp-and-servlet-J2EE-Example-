<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Train Details</title>
        <style type="text/css">
        /*#int1{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:100px;
                    top:150px;
             }
        #int2{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:500px;
                    top:150px;
             }
        #int3{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:900px;
                    top:150px;
             }
         #sem1{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:1400px;
                    top:150px;
             }
       #div1 {background-color: pink;width:33cm;height:40px;}
       #bor {border-color: black;border-style: solid;}
       #p1 {font-size:30px;font-family:arial;text-align:center;font-style:italic;}
       body{background-color:lightgrey;}*/
        </style>
        </head>
        <body>
            <div>
            <%!
                 private Connection cn = null; 
            %>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/traindb","root","");
            %>
            <%
                String tid =request.getParameter("tid");
                Statement stmt = cn.createStatement();
                String query ="select * from traindetail where trainid='"+tid+"'";
                ResultSet rs = stmt.executeQuery(query);
            %>
            <%
                while(rs.next())
                {   
            %>
            <center>
            <div>
                <p>Details of Train <b><%=rs.getString("trainname")%></b>..!!</p>
            </div><br><br><br>
             <%
                  }
             %>
            <%
              String query1 ="select * from traindetail where trainid='"+tid+"'";
              rs = stmt.executeQuery(query1);
            %>
            <%
               while(rs.next())
               {   
            %>  
               <table cellpadding="10" cellspacing="3" >                          
               <thead>
               <p> Train Information</p>
                   <tr>
                       <td>Train Id</td>
                       <td><%=rs.getString("trainid")%></td>
                   </tr>
                   <tr>
                       <td>Train Name</td>
                       <td><%=rs.getString("trainname")%></td>
                   </tr>
                   <tr>
                       <td>Train Type</td>
                       <td><%=rs.getString("traintype")%></td>
                   </tr>
                   <tr>
                       <td>Start Point</td>
                       <td><%=rs.getString("from_")%></td>
                   </tr>
                   <tr>
                       <td>Destination:</td>
                       <td><%=rs.getString("to_")%></td>
                   </tr>
                   <tr>
                       <td>Arrival Time:</td>
                       <td><%=rs.getString("arrivaltime")%></td>
                   </tr>
                   <tr>
                       <td>Departure Time:</td>
                       <td><%=rs.getString("departuretime")%></td>
                   </tr>
            </table>
            </center>
                       <%
                       }
                    %>    </body>
</html>