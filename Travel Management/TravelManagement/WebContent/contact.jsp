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
      <li class="nav-item">
        <a class="nav-link" href="about.html">About India</a>
      </li>


      <li class="nav-item active">
        <a class="nav-link" href="contact.html">Contact Us</a>
      </li>
      

  </div>
</nav>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


<div style="left: 0;right: 0;margin-left: 250px;padding-top: 18px;">
  <div style="width: 60%;background-color: #ddd;display: inline-block;margin-left: 166px;border-radius: 25px">
    <h3 style="float: left;margin-left: 20px;margin-top: 5px">Travel India</h3><br><br>
     <span>
                                    <ul style="list-style-type: none;display: inline-block;">
                                      <li>krishna saphire</li>
                                      <li>6 th floor Madhapur,</li>
                                      <li> Hyderabad -500062,</li>
                                    </ul>
                                    <ul style="list-style-type: none;display: inline-block;">
                                      <li><img style="padding-left: 20px" src="https://img.icons8.com/material-sharp/24/000000/phone.png"/> +91 9603074755</li>
                                      <li><span style="padding-left: 48px">+91 9603074755</span></li>
                                      <li><img style="padding-left: 20px" src="https://img.icons8.com/material-outlined/24/000000/new-post.png"/> info@travelindia.com</li>
                                    </ul>
                                    <ul style="display: inline-block;list-style-type: none;">
                                      <li><img style="margin-bottom: 61px;padding-left: 30px" src="https://img.icons8.com/fluent/150/000000/place-marker.png"/></li> 
                                    </ul>
      </span> 
    </div><br><br>
 <div style="padding-right: 55px;padding-left:  -10px">   
    <div  style="width: 100%;background-color: #ddd; height: 550px;padding: 1px;border-radius: 25px">

      
      <table style="width: 30%;">
        <tr>
          <td><h4 style="margin-left: 23px;font-family: sans-serif;padding-bottom: 20px">CONTACT US</h4></td>
        </tr>
        
        
      </table>

      <table style="display: inline-block;float: right;padding-right: 2px;margin-top: -294px";>
          <td>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30449.884437817163!2d78.37413603031321!3d17.448436284674678!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb9158f201b205%3A0x11bbe7be7792411b!2sMadhapur%2C%20Hyderabad%2C%20Telangana!5e0!3m2!1sen!2sin!4v1591881727102!5m2!1sen!2sin" width="400" height="390" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </td>
        </table>
    </div>

      <form method="Post">
      <table style="margin-top: -129px;">
             <td>
            <textarea name="text" cols="49" rows="7" placeholder="Message:"></textarea>
        </td>
        <tr>
          <td>			<input style="border-radius: 20px;background-color:lightred" type="submit" name="sendmessage" value="    sendmessage   ">
          </td>
        </tr>
        

      </table>
      </form>
      <%

if(request.getParameter("sendmessage") != null){
	String text1=request.getParameter("text");
	
	 try{
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TravelManagement","root","3ww:-(People");
		    Statement st=con.createStatement();
		    st.executeUpdate("insert into chat(chat1)values('"+text1+"')");
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
            Travel India is a newly setup tours and travel company and a destination management expert that offers all-inclusive tours to India. This is the primary website of the company, Travel India Pvt. Ltd., and features best possible tours to every possible tourist destination in India. Travel India will provide you all the facilities whilst you are on your personal journey - the journey of a lifetime. Believe us when we say, Possibilities are Unlimited - You only need your imagination to find them and guts to live them. Our mission is to provide Quality and excellence to our customers promptly and exclusively. All the professionals at Travel India are masters of their trade and each brings with him/her a unique set of experience adding value to the traveler's overall experience of the country. To put it simply, we know what a traveler anticipates and more than that we know what it takes to satisfy them.


           </div>

           
       </div>

</div>




</body>
</html>