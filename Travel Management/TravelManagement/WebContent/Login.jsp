<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>
		
	</title>
	<style type="text/css">
		body{
/*			background-image: url(11111.jpg);*/

            background-size: cover;
		}
		background-image {
  filter: blur(9px);
}
#myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
}
.content {
  position: fixed;
  bottom: auto;
  background: rgba(0, 0, 0, 0.5);
  color: #ddd;
  width: 100%;
  padding: 20px;
/*  opacity: 0.75;*/
}


	</style>
</head>

<body>
	<video autoplay muted loop id="myVideo">
		<source src="bg.mp4" type="video/mp4">
	</video>



<div class="content" >


	<h2 style="text-align: center;margin-top: 100px">ACCOUNT LOGIN </h2>
	<center>

	<div style="width: 18%;height: 273px;background-color: #ddd;box-shadow: 10;border-radius: 30px">
		<!-- <div style="">
			<img style="background-size: cover;width: 100px;height: 50px" src="sea.jpg">
		</div> -->

		
		<form method="post" style="text-align: center; padding-top: 30px;">
			<img src="https://img.icons8.com/metro/15/000000/user-male-circle.png"/> &#160; <input type="text" name="username"><br><br>

			<img src="https://img.icons8.com/material-sharp/15/000000/password1.png"/> &#160; <input type="password" name="password" ><br><br>
			<input style="border-radius: 20px;background-color:lightred" type="submit" name="submit" value="    Login   ">
			<input style="border-radius: 20px;background-color:lightred" type="submit" name="register" value="    Register   ">

		</form>
	</div>
</center>

</div>
<%
if(request.getParameter("register") != null){
	response.sendRedirect("Register.jsp");}
else{
if(request.getParameter("submit") != null){
	int k=0;
	String name=request.getParameter("username");
	String password=request.getParameter("password");
	 try{
		 
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TravelManagement","root","3ww:-(People");
		    Statement st=con.createStatement();
		    String qry="select * from user";
           ResultSet rs=st.executeQuery(qry);
          
           
           while(rs.next()){
           	
           	
           	if(name.equals(rs.getString(1)) && password.equals(rs.getString(2))) {
           		k=1;
           		
           		break;
           	}
           	else {
           		k=0;
           	}
           	
           }
		   }
	 catch(Exception e) {
		 
	 }
	 if(k==1) {
		 
		 response.sendRedirect("homedup.jsp");  
		
	 }
	 else {
		 int i=0;
		 
		 out.println("<script type=\"text/javascript\">");
        if(i==0) {
		 out.println("alert('Incorrect Credentials Entered');");
		 i=1;
		 }
		 if(i==1) {
		 out.println("location.replace('Login.jsp')");
	 }
		 out.println("</script>");
		
	 }
}
}


%> 
</body>
</html>