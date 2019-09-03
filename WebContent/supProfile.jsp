<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<%
	
	String driverName = "com.mysql.jdbc.Driver";
	String ConnectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "customer";
	String UserId="root";
	String password = "bawwa";
	
	try{
		Class.forName(driverName);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;

%>


<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Responsive vertical menu navigation</title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<link rel="stylesheet" href="./style/main.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<link rel="stylesheet" href="./style/main.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
		<script src="https://kit.fontawesome.com/b7e89b71b3.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<!--<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
		<script src="https://kit.fontawesome.com/b7e89b71b3.js"></script>-->
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
		<script src="main.js"></script>

		<style>
			.ad {
				position: absolute;
				width: 300px;
				height: 250px;
				border: 1px solid #ddd;
				left: 50%;
				transform: translateX(-50%);
				top: 250px;
				z-index: 10;
			}
			.ad .close {
				position: absolute;
				font-family: 'ionicons';
				width: 20px;
				height: 20px;
				color: #fff;
				background-color: #999;
				font-size: 20px;
				left: -20px;
				top: -1px;
				display: table-cell;
				vertical-align: middle;
				cursor: pointer;
				text-align: center;
			}
		</style>
		

	</head>
	<body>
		<div class="header">
			<div class="logo">
				
				<span>Brand</span>
			</div>
			<a href="#" class="nav-trigger"><span></span></a>
		</div>
		<div class="side-nav">
			<div class="logo">
				
				<span>LuckyLand Pharmacy</span>
			</div>
			<nav>
				<ul>
					<li>
						<a href="#">
							<span>Customer </span>
						</a>
					</li>
					<li>
						<a href="#">

							
							<span>Stock </span>
						</a>
					</li>
					<li >
						<a href="#">
							
							<span>Item </span>
						</a>
					</li>
					<li class="active">
						<a href="#">
							<span></span>
							
							<span>Supplier </span>
						</a>
					</li>
					<li>
						<a href="#">
							
							<span>Supplier Order </span>
						</a>
					</li>
					<li>
						<a href="#">
							
							<span>Customer Order </span>
						</a>
					</li>
					<li>
						<a href="#">
							
							<span>Employee </span>
						</a>
					</li>
					<li>
						<a href="#">
							
							<span>Finance </span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
		<div class="main-content">
				<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
						  <span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav">
						  <ul class="navbar-nav">
							<li class="nav-item">
							  <a class="nav-link" href="addSup.jsp">Add Supplier <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item active">
							  <a class="nav-link" href="supProfile.jsp">Supplier Profile</a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="viewSup.jsp">View Supplier</a>
							</li>
							<li class="nav-item">
							  <a class="nav-link disabled" href="SupReport.jsp">Reports</a>
							</li>
							
						  </ul>
						  
						</div>
					  </nav>
					  

					  
					  <nav class="navbar navbar-light bg-light">
							<form class="form-inline" action="searchSup.jsp">
							  <input class="form-control mr-sm-2" type="search" placeholder="CompanyTelNo" aria-label="Search" name="search">
							  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
							</form>
						  </nav>
						  <!--nav class="navbar navbar-light bg-light">
								<form class="form-inline">
								  <input class="form-control mr-sm-2" type="search" placeholder="Supplier Name" aria-label="Search">
								  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
								</form>
							  </nav-->
							  
					  
					  <div class="">
						
							
							<table id="mytable" class="table table-bordred table-striped">
								 
								 <thead>
								 
								 
								  <th>Supplier ID</th>
								  <th>Supplier Name</th>
								  <th>Company Name</th>
								  <th>Company Address</th>
								  <th>Company ConNo</th>
								  <th>Company Email</th>
								  <th>Edit</th>
								  <th>Remove</th>
								 </thead>
				  <%
try{
connection = DriverManager.getConnection(ConnectionUrl+dbName,UserId,password);
statement=connection.createStatement();
String sql ="select * from newsupplier";
resultset = statement.executeQuery(sql);
int i=0;
while(resultset.next()){
%>
				  <tbody>
				  
				  <tr>
				  
				 <td><%=resultset.getString("supplierID") %></td>
				 <td><%=resultset.getString("supplierName") %></td>
				 <td><%=resultset.getString("companyName") %></td>
				 <td><%=resultset.getString("companyAddress") %></td>
				 <td><%=resultset.getInt("companyTelNo") %></td>
				 <td><%=resultset.getString("companyEmail") %></td>
				 <td><a href="UpdateSupplier.jsp?supplierID=<%=resultset.getString("supplierID")%>"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="fas fa-pencil-alt"></span></button></a></td>
				 
				  <td><a href="DeleteSupplier.jsp?supplierID=<%=resultset.getString("supplierID") %>"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fas fa-trash-alt"></span></button></a></td>
				  
				  </tr>
				  <%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
					  
			  </table>
			
			
		</div>
		
	</body>
</html>