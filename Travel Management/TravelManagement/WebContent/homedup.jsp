<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <link rel="stylesheet" type="text/css" href="one.css">

  <style type="text/css">
    button{
      background-color: #4d4dff;
    }
    button:hover{
      background-color: green;
    }
  
     
}}
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
<div style="width: 30%;height: auto;background-color: #ddd;border-radius: 10px;padding-top:  50px;padding-bottom: 50px ;padding-left:90px">
  <table style="margin: 5px;border-spacing: 12px 15px; border-collapse: separate;font-family: ">
<form align="center" method="post">

  <input placeholder="DD/MM/YYYY" type="text" id="date" name="date"><br><br>


<select name="destination" id="destination">
    <option value="Destination">Destination</option>
    <option value="Leh">Leh</option>
    <option value="Kerala">Kerala</option>
    <option value="Andaman">Andaman</option>
  <option value="Rajasthan">Rajasthan</option>
    <option value="Sikkim">Sikkim</option>
    <option value="Andhra Pradesh">Andhra Pradesh</option>

  </select>
  <br><br>
  <input type="submit" value="Submit" name="submit">


</form> 

  
           <%
if(request.getParameter("submit")!=null){
	String s=request.getParameter("date");
    String d=request.getParameter("destination");
	session.setAttribute("date",s);
	session.setAttribute("destination",d);
	%>
	<script type="text/javascript">
	window.location.replace("trips.jsp");
			</script>
	<%
}

 
%>

</body>
</html>