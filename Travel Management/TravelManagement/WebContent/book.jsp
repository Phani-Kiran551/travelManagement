<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  </style> 





</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><img src="ind.png" width="18%" height="18%" style="float: left;" > Travel india</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

      <li class="nav-item">
        <a class="nav-link" href="homedup.jsp">Home <span class="sr-only">(current)</span></a>
      </li>


      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Our Tours
        </a>

        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="trip.html">Leh</a>
          <a class="dropdown-item" href="trip.html">Kerala</a>
          <a class="dropdown-item" href="trip.html">Andaman</a>
          <a class="dropdown-item" href="trip.html">Rahjasthan</a>
          <a class="dropdown-item" href="trip.html">Sikkim</a>
          <a class="dropdown-item" href="trip.html">Andhra Pradesh</a>
        </div>


      </li>
      <li class="nav-item active">
        <a class="nav-link" href="about.html">About India</a>
      </li>


      <li class="nav-item">
        <a class="nav-link" href="contact.html">Contact Us</a>
      </li>
      

  </div>
</nav>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<br><br>

<div style="padding-left: 30px">
<div style="width: 30%;height: auto;background-color: #ddd;border-radius: 10px;padding-top:  50px;padding-bottom: 50px">
  <H3 style="text-align: center;">Book  your Trip</H3><hr>
  <table style="margin: 5px;border-spacing: 12px 15px; border-collapse: separate;font-family: ">
   <%
String date=(String)session.getAttribute("date");
String destination=(String)session.getAttribute("destination");


%>
<form method="post">
    <tr>
      <td><font>Name:</font></td> 
      <td ><input style="border-radius: 5px;border-style: none;" type="text" name="name" placeholder="Full name" ></td>
      <!-- <td ><form><input type="text" name="lname" ></form></td> -->
    </tr>
   <!--  <tr >
      <td></td>
      <td>firstname</td>
      <td>last name</td>
    </tr> -->
    <tr>
      <td><font>Email:</font></td>
      <td><input style="width: 214px; border-radius: 5px;border-style: none;" type="Email" name="email" placeholder="ex:myname@example.com"></td>
    </tr>
    <tr>
      <td><font>Phone Number:</font></td>
      <td><input style="border-radius: 5px;border-style: none;" type="Number" name="phonenumber"></td>
    </tr>
    <tr>

      <td><font style="font-size: 15px;"> <label for="departure">Date of Departure:</label></font ></td>
      <td>
         
         

            <input style="border-radius: 5px;border-style: none;"type="date" id="departure" value="<%= date %>" name="departure" >
        
      </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <span>
          <select style="text-align: center; margin-right: 20px;border-radius: 5px" name="Adults" id="Adults">
            <option>Adults</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="3">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
          </select> 
      <select style="border-radius: 5px;"name="Children" id="Children (5 - 12 yo)">
        <option>Children</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
      </select>
        </span>
      </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <textarea style="border-radius: 5px"cols="20" rows="5" placeholder="Additional information" name="additional"></textarea>
      </td>
    </tr>
  </table>
  <center>
 <input type="submit" style=" ;color: white;border-radius: 10px" name="submit" value="Confirm Booking">
 </center>

   </form>
<%
if(request.getParameter("submit") != null){
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String phonenumber=request.getParameter("phonenumber");
    String departure=request.getParameter("departure");
    String Adults=request.getParameter("Adults");
    String Children=request.getParameter("Children");
    String additional=request.getParameter("additional");
   
    
    
    
    
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TravelManagement","root","3ww:-(People");
    Statement st=con.createStatement();
    st.executeUpdate("insert into booking(name,email,phonenumber,place,departure,Adults,Children,additional)values('"+name+"','"+email+"','"+phonenumber+"','"+destination+"','"+departure+"','"+Adults+"','"+Children+"','"+additional+"')");
%>
<script>
    alert("data is inserted");
  
</script>
<%     
    }catch(Exception e){
%>    
    	<script>
        alert("data insertion failed");
    
  
        </script>
<% 
    }
    
}
    %>   
   
</div>
<br><br>

</div>


<!--footet-->

<div style="background-color: #eee;width: 100%; height: 384px;display: inline-block;position: relative;">
        <div style="margin-left: 100px; margin-right:100px; margin-top: 20px; margin-bottom: 0px ;float: right;" class="footer">
           <h2> Follow us </h2><br>
           <p><img src="https://img.icons8.com/fluent/40/000000/facebook-new.png"/> Facebook  &#160;&#160;&#160;&#160; <img src="https://img.icons8.com/fluent/40/000000/instagram-new.png"/>Instagram &#160;&#160;&#160;&#160; <img src="https://img.icons8.com/fluent/40/000000/twitter.png"/> Twitter </p><hr>
           <h2>Contact Us</h2>
           <img src="https://img.icons8.com/material-two-tone/24/000000/near-me.png"/>

           <pre style="display: inline;"> Headquarters<br><h6 style="opacity: 0.5">    Krishna Saphire-Seventh floor<br>    Hyderbad,500062<br><br><h6></h6><img src="https://img.icons8.com/material-sharp/24/000000/phone.png"/> +91 9603074755<br><br><img src="https://img.icons8.com/material-outlined/24/000000/new-post.png"/> info@travelindia.com
           </pre>
        
        </div>
       <div>

           <h3 style="margin-top: 20px; padding-left: 50px">About Us</h3>
           <div style="padding-left: 50px">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
           </div>

           
       </div>

</div>


</body>
</html>
 
