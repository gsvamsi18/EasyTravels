<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <% String car="c4";
 session.setAttribute("car", car); %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Details</title>
    <style>
    *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
}

table {
  max-width: 960px;
  margin: 10px auto;
}

caption {
  font-size: 1.6em;
  font-weight: 400;
  padding: 10px 0;
}

thead th {
  font-weight: 400;
  background: #8a97a0;
  color: #FFF;
}

tr {
  background: #f4f7f8;
  border-bottom: 1px solid #FFF;
  margin-bottom: 5px;
}

tr:nth-child(even) {
  background: #e8eeef;
}

th, td {
  text-align: left;
  padding: 20px;
  font-weight: 300;
}

tfoot tr {
  background: none;
   left:200px;
}

tfoot td {
  padding: 10px 2px;
  font-size: 0.8em;
  font-style: italic;
  color: #8a97a0;
 
}
* {
  box-sizing: border-box;
}

.box1 {
  float: left;
  width: 50%;
  padding: 50px;
  height: 300px;
}
.box2 {
  float: left;
  width: 50%;
  padding: 50px;
  height: 300px;
}
img{
center:auto;
}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
tfoot{
 right:200px;
}
    
    </style>
  </head>
  <body>
<div class="clearfix">
    <table class="box1" style="background-color:#bbb">
      <caption>Details of Car</caption>
      
        <tr>
          <td scope="col" bgcolor='#8a97a0'>Name</td>
          <td scope="col">Mahindra Jeep</td>
        </tr>
      
     
      <tbody>
        <tr>
          <th scope="row" bgcolor='#8a97a0'>ID</th>
          <td>c4</td>
        </tr>
        <tr>
          <th scope="row" bgcolor='#8a97a0'>Number Plate</th>
          <td>TS 08 EQ 4548</td>
        </tr>
        <tr>
          <th scope="row" bgcolor='#8a97a0'>Seating Capacity</th>
          <td>5</td>
        </tr>
        <tr>
          <th scope="row" bgcolor='#8a97a0'>Fuel Type</th>
          <td>Petrol</td>
          
        </tr>
        <tr>
          <th scope="row" bgcolor='#8a97a0'>Amount</th>
          <td>1900 per day</td>
          
        </tr>
      </tbody>
      
    </table>
      <div class="box2" >
    <img idth="400" height="200" src="https://5.imimg.com/data5/MX/LA/GLADMIN-67891359/zeep-wrangler-rental-services-250x250.png">
  </div>
   </div>
    <form method="post" action="registercar.jsp">
            
            <table width="30%" border="1" width="30%" class="styled-table" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><font size=5> Enter Details Here</font></th>
                    </tr>
                </thead>
                <tbody>
                   
                    <tr>
                        <td>From date</td>
                        <td><input type="date" name="from" required /></td>
                    </tr>
                    <tr>
                        <td>To date</td>
                        <td><input type="date" name="to" required /></td>
                    </tr>
                    <tr>
                        <td><button><a href="Car4Details.jsp">Go Back</a></button></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </tbody>
            </table> 
            </form>
      
  </body>
</html>
