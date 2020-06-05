<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>List customer</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		
		<style>
			.bg-1{
				background-color: #d0e1e1
			}
			
			
		</style>
		
	</head>
	
	<body>
				
		<div class="jumbotron text-center" id="home">																							<!--style -->
			<h1>Customer relation Mapping</h1>
			<p>customer tracking information using springMVC and Hibernate</p>
		</div>
	
	
		<div class="container" id="database">										<!-- send to addcutomer in controller customer/AddCustomer -->
			<button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='AddCustomer'">
				<span class="glyphicon glyphicon-upload"></span> Add Customer														<!--style -->
			</button>
			<table class="table table-bordered">
		
				<thead class="thead-dark">
					<tr>
						<th>First Name </th>
						<th>Last Name </th>
						<th>Email </th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
		
				<tbody>
					<c:forEach items="${customers}" var="i">
						
						<c:url var="updateLink" value="UpdateCustomer">	<!-- means customer/UpdateCustomer -->
							<c:param name="customerId" value="${i.id}"></c:param>
						</c:url>
						
						<c:url var="deleteLink" value="DeleteCustomer">	<!-- means customer/UpdateCustomer -->
							<c:param name="customerId" value="${i.id}"></c:param>
						</c:url>
						
						<tr>
							<td> <c:out value="${i.f_name}"></c:out> </td>
							<td> <c:out value="${i.l_name}"></c:out> </td>
							<td> <c:out value="${i.email}"></c:out> </td>
							<td> <button class="btn btn-info" onclick="window.location.href='${updateLink}'">
									<span class="glyphicon glyphicon-pencil"></span> Update		
								</button>																							<!--style -->
							</td>
						    <td> 
						    	<button class="btn btn-danger" onclick="window.location.href='${deleteLink}'">
						      		<span class="glyphicon glyphicon-trash"></span> Delete 	<!-- add delete icon -->				<!--style -->
						        </button>
						    </td>
						</tr>		
					</c:forEach>
				</tbody>
		
			</table>
		</div>
		
		<!-- Container (Services Section) -->
		<div id="services" class="container-fluid text-center bg-1">
  			<h2>SERVICES</h2>
  			<h4>What we offer</h4>
  			<br>
  			
  			<div class="row slideanim">	
    			<div class="col-sm-4">
      				<span class="glyphicon glyphicon-off logo-small"></span>
      				<h4>POWER</h4>
      				<p>Lorem ipsum dolor sit amet..</p>
    			</div>
    			
    			<div class="col-sm-4">
 			    	<span class="glyphicon glyphicon-heart logo-small"></span>
      				<h4>LOVE</h4>
      				<p>Lorem ipsum dolor sit amet..</p>
    			</div>
			    
			    <div class="col-sm-4">
			      <span class="glyphicon glyphicon-lock logo-small"></span>
			      <h4>JOB DONE</h4>
			      <p>Lorem ipsum dolor sit amet..</p>
			    </div>
			</div>
 			<br><br>
		
		  	<div class="row slideanim">
			    <div class="col-sm-4">
			      <span class="glyphicon glyphicon-leaf logo-small"></span>
			      <h4>GREEN</h4>
			      <p>Lorem ipsum dolor sit amet..</p>
			    </div>
			   
			    <div class="col-sm-4">
			      <span class="glyphicon glyphicon-certificate logo-small"></span>
			      <h4>CERTIFIED</h4>
			      <p>Lorem ipsum dolor sit amet..</p>
			    </div>
			   
			    <div class="col-sm-4">
			      <span class="glyphicon glyphicon-wrench logo-small"></span>
			      <h4 style="color:#303030;">HARD WORK</h4>
			      <p>Lorem ipsum dolor sit amet..</p>
			    </div>
		    </div>
		</div>
		
		
	</body>
</html>