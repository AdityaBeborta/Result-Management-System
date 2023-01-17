<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.result.entity.Students"%>
<%@page import="java.util.List"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	
	background: #4568DC;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #B06AB3, #4568DC);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #B06AB3, #4568DC); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

.b {
	background-color: #6600cc;
	color: white;
}

.card {
	border-radius: 4px;
	background: #fff;
	box-shadow: 0 6px 10px rgb(115, 0, 230), 0 0 6px rgb(115, 0, 230);
	transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s
		box-shadow, .3s -webkit-transform
		cubic-bezier(.155, 1.105, .295, 1.12);
	cursor: pointer;
}

.card:hover {
	transform: scale(1.05);
	box-shadow: 0 10px 20px rgb(115, 0, 230), 0 4px 8px rgb(115, 0, 230);
}

.a {
	background-color: #6600cc !important;
}

</style>

<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
	

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark a">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"> Made with <i class="fa fa-heart" style="font-size:20px;color:red"></i> Aditya</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				</ul>

			</div>
		</div>
	</nav>
	<%
		double sum = 0;
	double credit = 0;
	double cgpa = 0;

	
	
	
	%>

	
	

	<%
	List<Students> sd=(List<Students>)request.getAttribute("details");

	for (Students s : sd) {
		int a1 = 0;
		double c = 0;
		

		String str = s.getSubject_credit();
		
		System.out.println(str);
		String [] arr = str.split("\\+");
		for (String ad : arr) {
			System.out.println(ad);
			
			c=c+Double.valueOf(ad);
			


		}
		System.out.println(c);
		double a = 0;
		if (s.getSubject_grade().equals("O")) {
			a = 10 * c;
		} else if (s.getSubject_grade().equals("E")) {
			a = 9 * c;
		} else if (s.getSubject_grade().equals("A")) {
			a = 8 * c;
		} else if (s.getSubject_grade().equals("B")) {
			a = 7 * c;
		} else if (s.getSubject_grade().equals("C")) {
			a = 6 * c;
		} else if (s.getSubject_grade().equals("D")) {
			a = 5 * c;
		} else if (s.getSubject_grade().equals("F")) {
			a = 0;
		}
		sum = sum + a;
		credit = credit + c;
	%>


	<div class="container text-center">
		<div class="row">
			<div class="col-md-2">
			
			</div>
			<div class="col-md-8">
				<div class="card my-3  text-white" style="background: transparent;">
					<div class="card-header a text-white">
						<h2 class="">
							Subject Name:
							<%=s.getSubject_name()%></h2>
							<h5 class="card-text text-warning">
							Registration Number:
							<%=s.getRegno()%></h5>
					</div>

					<div class="card-body">

						<h2 class="card-text">
							Subject Code:
							<%=s.getSubject_code()%></h2>
							
						<h2 class="card-text">
							Subject Credit:
							<%=s.getSubject_credit()%></h2>
						<h2 class="card-text">
							Semester:
							<%=s.getSem()%></h2>
						<h2 class="card-text">
							Grade:
							<%=s.getSubject_grade()%></h2>

					</div>
				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>

	<%
		}

	cgpa = sum / credit;
	System.out.println(sum);
	System.out.println(credit);
	System.out.println(cgpa);
	%>
	<div class="container text-center">
		<h1 class="text-center text-warning" >
		
			Congrates your SGPA is :<%=cgpa%>
			 
					</h1>
		<a href="/" class="btn a text-center text-white my-3">Search
			Another Result</a>
	</div>
	

</body>
</html>