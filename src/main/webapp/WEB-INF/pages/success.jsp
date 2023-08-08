<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success Page</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" 
		crossorigin="anonymous">
		
	<style>
		.navbar-custom{
			background-color:#8BE8E5;
		}
		section{
			background-color:white;
		}
		
		.table-custom {
		    border-collapse: collapse;
		    margin-left:auto;
		    margin-right:auto;
		    font-size: 0.9em;
		    font-family: sans-serif;
		    width: 70%;
		    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
		    text-align:center;
		}
		
		h2{
			color:#7A9D54;
			text-align:center;
		}
		
		.container{
			height: 50px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		}
		
		.btn-custom{
			margin:5px;
			padding:10px 15px;
		}
	</style>
	
</head>

<body>
	<nav class="navbar navbar-fixed-top navbar-custom navbar-expand-lg">
	  	<div class="container-fluid">
		    <a class="navbar-brand" href="signin">
		    <img src="images/sports_nav.jpeg" alt="AK Logo" width="30" height="30">AK Sports</a>
		    
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="signin">Home</a>
			        </li>
			         <li class="nav-item">
			          <a class="nav-link" href="showall">Inventory</a>
			        </li>
		      </ul>
		     <!-- <form class="d-flex" role="search">
		        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success" type="submit">Search</button>
		      </form> -->
		    </div>
	  	</div>
	</nav>
	<br><br><br><br>
	<div class="container-fluid">
		<h2>Congratulations!! Logged in Successfully!</h2>
	</div>
	<br><br><br><br>
	<table class="table table-custom">
	
		<thead class="table-dark">
			<tr>
				<th>Product ID</th>
				<th>Brand</th>
				<th>Color</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Available</th>
				<th colspan=2>Action(Edit)</th>
			</tr>
		</thead>  
		 <tbody>
		 	<tr>
				<td>${pdto.productid}</td>
				<td>${pdto.brand}</td>
				<td>${pdto.color}</td>
				<td>${pdto.name}</td>
				<td>${pdto.price}</td>
				<td>${pdto.availability}</td>
				<td><a href="updatepage?productid=${pdto.productid}">
							<img src="images/edit.png" 
								title ="Click to Update a Record" width="20" height="20" class="logo" alt="update button">
						</a>
				</td>
				<td><a href="remove?productid=${pdto.productid}">
							<img src="images/delete1.png" 
								title ="Click to Update a Record" width="20" height="20" class="logo" alt="delete button">
						</a>
				</td>
			</tr>
		 </tbody>
		  
	</table>
	<br><br><br>
	
		<div class="container">
          <a href="signin">
          	<button class="btn btn-danger btn-lg btn-block btn-custom" type="submit">Back</button>
          </a>
          <a href="showall">
          	<button class="btn btn-danger btn-lg btn-block btn-custom" type="submit">Show All</button>
          </a>
          <a href="register">
          	<button class="btn btn-danger btn-lg btn-block btn-custom" type="submit">New Product</button>
          </a>
        </div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>	
</body>
</html>