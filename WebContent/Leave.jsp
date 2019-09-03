<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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

		<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
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
				
				<span>LuckyLand Pharamacy</span>
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
					<li>
						<a href="#">
							
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
							
							<span>Customer Order</span>
						</a>
					</li>
					<li class="active">
						<a href="#">
							<span></span>
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
			<!--Nav bar-->
				<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
						  <span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav">
						  <ul class="navbar-nav">
							<li class="nav-item">
							  <a class="nav-link" href="Registration.jsp">Add Employee </a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="Details.jsp">Employee Details</a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="Payment.jsp">Payment Details</a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="Attendance.jsp">Mark Attendance</a>
							</li>
							<li class="nav-item active">
							  <a class="nav-link disabled" href="Leave.jsp">Mark Leave <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="Reports.jsp">Reports</a>
							</li>
							
							
						  </ul>
						  
						</div>
					  </nav>
					  <!--Nav bar end-->

					  <!--add form-->
					  
					  <div class="addform" >
							<form class="form-horizontal" action="#">
								<div class="form-group">
								  <label class="control-label col-sm-2" for="email">Name :</label>
								  <div class="col-sm-10">
									<input type="text" placeholder="Full Name" class="form-control" id="email" >
									
								  </div>
								</div>
									<div class="form-group">
								  <label class="control-label col-sm-2" for="pwd">Date :</label>
								  <div class="col-sm-10">
									<input type="date" class="form-control" id="pwd">
								  </div>
								  </div>
								  <div class="form-group">
										<label class="control-label col-sm-2" for="pwd">Leave Type:</label>
										<div class="col-sm-10">
										 <input type="radio" name="leave" value="half"> Half
										 <input type="radio" name="leave" value="full"> Full

										</div>
									  </div>
								  <div class="form-group">
								  <label class="control-label col-sm-2" for="pwd">Reason :</label>
								  <div class="col-sm-10">
									<input type="text" class="form-control" id="pwd">
								  </div>
								</div>
							
							          <div class="form-group">
										  </div>
										  	<div class="form-group">
										 
										<div class="col-sm-10">
										<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									  </div>
							
							
								
							  </form> 
					  </div>
			
		</div>
	</body>
</html>