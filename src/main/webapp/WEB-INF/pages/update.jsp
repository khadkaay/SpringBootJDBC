<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>

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
		
		.message{
			color:red;
		}
		
		h2{
			color:#7A9D54;
			text-align:center;
		}
		
		body{
			font:15px Montserrat, sans-serif;
			color:#FFEADD;
			background-color: #F9F5F6;
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
	
	<section class="vh-100" style="background-color: #F9F5F6;">
	  <div class="container py-5 h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col col-xl-10">
	        <div class="card" style="border-radius: 1rem;">
	          <div class="row g-0">
	            
	            <div class="col-md-6 col-lg-7 d-flex align-items-center">
	              <div class="card-body p-4 p-lg-5 text-black">
					<h2>Vendor/Product Registration!</h2>
					
	                <form action="updateprod" method="post">
	
		                  <div class="d-flex align-items-center mb-3 pb-1">
		                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
		                    <span class="h1 fw-bold mb-0">Update Product</span>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="hidden" id="productid" name="productid" class="form-control form-control-lg" placeholder="${pdto.productid}" value="${pdto.productid}"/>
		                    <label class="form-label" for="productid"></label>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="email" id="username" name="username" class="form-control form-control-lg" placeholder="${pdto.username}" value="${pdto.username}" />
		                    <label class="form-label" for="emailform">Email address</label>
		                  </div>
		
		                  <div class="form-outline mb-4">
		                    <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="${pdto.password}" value="${pdto.password}" />
		                    <label class="form-label" for="passwordform">Password</label>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="text" id="brand" name="brand" class="form-control form-control-lg" placeholder="${pdto.brand}" value="${pdto.brand}"/>
		                    <label class="form-label" for="brandform">Brand</label>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="text" id="color" name="color" class="form-control form-control-lg" placeholder="${pdto.color}" value="${pdto.color}" />
		                    <label class="form-label" for="colorform">Color</label>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="text" id="name" name="name" class="form-control form-control-lg" placeholder="${pdto.name}" value="${pdto.name}"/>
		                    <label class="form-label" for="nameform">Name</label>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="text" id="price" name="price" class="form-control form-control-lg" placeholder="${pdto.price}" value="${pdto.price}"/>
		                    <label class="form-label" for="priceform">Price</label>
		                  </div>
		                  
		                  <div class="form-outline mb-4">
		                    <input type="text" id="availability" name="availability" class="form-control form-control-lg" placeholder="${pdto.availability}" value="${pdto.availability}"/>
		                    <label class="form-label" for="passwordform">Availability</label>
		                  </div>
		
		                  <div class="pt-1 mb-4">
		                    <button class="btn btn-success btn-lg btn-block" type="submit">Update</button>
		                  </div>
	                </form>
	
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>	
</body>
</html>