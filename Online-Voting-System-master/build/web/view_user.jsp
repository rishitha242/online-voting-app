<%-- 
    Document   : view_user
    Created on : 12 Jun, 2019, 3:17:52 PM
    Author     : G KY SHASTRY
--%>

<%@ include file="connection.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User View</title>
    </head>
    <script>
        function admin_home()
        {
            location.replace("admin_home.jsp");
        }
    </script>
    <body style="background-color:#EBEBEB">
        <center>
            <h1>ONLINE VOTING SYSTEM</h1>
            <table border="1">
                <tr>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Age</td>
                    <td>Gender</td>
                    <td>Aadhar</td>
                    <td>Address</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>Mobile no</td>
                    <td>Email id</td>
                    <td>User id</td>
                    <td>Password</td>
                    <td>Confirm Password</td>
               </tr>
            <tbody>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from user_reg");
                    while(rs.next())
                     {
                %>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    <td><%=rs.getString(11)%></td>
                    <td><%=rs.getString(12)%></td>
                    <td><%=rs.getString(13)%></td>
                    <td><%=rs.getString(14)%></td>
                    
                </tr>
                <%
                      }
                %>


            </tbody>
           </table>
                <br>
           <button  onclick="admin_home()">Go Back</button>              
       </center>
                
  </body>
</html>