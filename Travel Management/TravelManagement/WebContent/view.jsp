<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
	<title></title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <link rel="stylesheet" type="text/css" href="one.css">

  <style type="text/css">
    button{
      background-color: #4d4dff;
    }
    button:hover{
      background-color: green;
    }
    #myTable {
  border-collapse: collapse;
  width: 50%;
  border: 1px solid #ddd;
  font-size: 18px;
  
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
  </style> 





</head>
<body>

<div>
<table id="myTable">
  <tr class="header">
    <th style="width:10%;">Name</th>
    <th style="width:10%;">Email</th>
    <th style="width:10%;">Phone No</th>
    <th style="width:10%;">Place</th>
    <th style="width:10%;">Departure</th>
    <th style="width:10%;">Adults</th>
    <th style="width:10%;">Children</th>
    <th style="width:10%;">Additional</th>
    
    
    
    

  </tr>
 
    <%
   
    try {
		
    	
    	 Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TravelManagement","root","3ww:-(People");
         Statement st=con.createStatement();
         String qry="select * from booking";
         ResultSet rs=st.executeQuery(qry);
       
         while(rs.next()){
          rs.next();
         	out.println("<tr>");
         	out.println("<td>");
         	out.println(rs.getString(1));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(2));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(3));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(4));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(5));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(6));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(7));
         	out.println("</td>");
         	out.println("<td>");
         	out.println(rs.getString(8));
         	out.println("</td>");
         	out.println("</tr>");
         	}
         	
         
         out.println("</table>");
    }
         catch(Exception e){
         
             out.println(e);
         }
   
     
        %>
</table>

</div>

			<input style="border-radius: 20px;background-color:lightred" type="submit" name="submit" value="submit">

<%
if(request.getParameter("submit") != null){
	response.sendRedirect("chat.jsp");}



%> 

</body>
</html>
 
