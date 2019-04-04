<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html lang="en">

<head>
	<title>Save Book</title>
	
	<link type="text/css" rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/style.css" />
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
</head>
<body>
	<div class="container">
		<div class="row">
	  		<h2>Library System</h2>
	  	</div>

	
		<div class="row">
			<h3>Save Book</h3>
		</div>
		<div class="row">

            <form:form action="saveBook" modelAttribute="book" method="POST">
            <form:hidden path="idBook" />

            <div class="form-group">
                <label>Title:</label>
                <form:input class="form-control" path="title" /> <form:errors path="title" cssClass="error" />
            </div>
            <div class="form-group">
                <label>Author:</label>
                <form:input class="form-control" path="author" /> <form:errors path="author" cssClass="error" />
            </div>
            <div class="form-group">
                <label>Genre:</label>
                <form:input class="form-control" path="genre" />
            </div>

            <button type="submit" value="Save" class="btn btn-primary">Save</button>			
            </form:form>
		</div>
		<div class="row">
			<p>
				<a href="${pageContext.request.contextPath}/book/list-books">Back to List</a>
			</p>			
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>