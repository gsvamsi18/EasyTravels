<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %> 
<% 
String u = (String) session.getAttribute("userid");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crs","root","root@1234");
Statement stmt=con.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select * from bookedcars where uname ='"+u+"'");
String Color="red";
out.println("Customer Name:"+" "+u);
	
	if (rs.first()){
		out.println("<html><head></head><body><center><h1>My Bookings<h1></center></body></html>");
		out.println("<html><head><style> body { background: #000; color: #030303; font-family: sans-serif; background-image: url(https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2017%2F04%2Froad-trip-ROADTRIPHACKS0517.jpg&q=85); background-size: cover; background-repeat: no-repeat; } tr { height: 39px; }.styled-table tbody tr { border-bottom: 1px solid #dddddd;}.styled-table tbody tr:nth-of-type(even) {background-color: #f3f3f3; }.styled-table tbody tr:last-of-type {border-bottom: 2px solid #009879;}.styled-table {border-collapse: collapse;margin: 25px 0;font-size: 0.9em;font-family: sans-serif;min-width: 400px;box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);}table, th, td {border: 1px solid black;}th{  width: 130px;  height: 60px;  border: 1px solid blue;  box-sizing: border-box;}</style></head><body bgcolor='Color'><center><table><tr bgcolor='darkgoldenrod'><th>Car Name</th><th>From Date</th><th>To Date</th></tr>");
	 do{
		out.println("<html><head><style> body { background: #000; color: #030303; font-family: sans-serif; background-image: url(https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2017%2F04%2Froad-trip-ROADTRIPHACKS0517.jpg&q=85); background-size: cover; background-repeat: no-repeat; } tr { height: 39px; }.styled-table tbody tr { border-bottom: 1px solid #dddddd;}.styled-table tbody tr:nth-of-type(even) {background-color: #f3f3f3; }.styled-table tbody tr:last-of-type {border-bottom: 2px solid #009879;}.styled-table {border-collapse: collapse;margin: 25px 0;font-size: 0.9em;font-family: sans-serif;min-width: 400px;box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);}table, th, td {border: 1px solid black;}th{  width: 130px;  height: 60px;  border: 1px solid blue;  box-sizing: border-box;}</style></head><body bgcolor='Color'><center><table><tr bgcolor='white'><th>"
		
		+rs.getString(3)
		+"</th><th>"
		+rs.getString(8)
		+"</th><th>"
		+rs.getString(9)
		+"</th></table></center></tr></body></html>");	
	  }while(rs.next());
	 out.println("<html><br><br></html>");
	}
	
	else{
		out.println("<html><head><style> body { background: #000; color: #030303; font-family: sans-serif; background-image: url(https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F28%2F2017%2F04%2Froad-trip-ROADTRIPHACKS0517.jpg&q=85); background-size: cover; background-repeat: no-repeat; } tr { height: 39px; }.styled-table tbody tr { border-bottom: 1px solid #dddddd;}.styled-table tbody tr:nth-of-type(even) {background-color: #f3f3f3; }.styled-table tbody tr:last-of-type {border-bottom: 2px solid #009879;}.styled-table {border-collapse: collapse;margin: 25px 0;font-size: 0.9em;font-family: sans-serif;min-width: 400px;box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);}table, th, td {border: 1px solid black;}</style></head><body><h1>No Bookings</h1></body></html>");
	}
	out.println("<html><center><button><a href='NewFile2.jsp'>Home</a></button><center/></html");
	

%>