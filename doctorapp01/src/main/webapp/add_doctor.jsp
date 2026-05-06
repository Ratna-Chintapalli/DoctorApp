<%@ page isELIgnored="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Doctor</title>

<!-- Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body style="background-color: #e2e2e2">

<div class="container mt-5">

    <div class="card mx-auto shadow" style="width: 25rem;">
        <div class="card-body">

            <h4 class="text-center fw-bold">Add Doctor</h4>
            

            <form:form modelAttribute="doctor" action="save" method="post">

                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <form:input path="name" class="form-control"/>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <form:input path="email" class="form-control"/>
                </div>

                <div class="mb-3">
                    <label class="form-label">Specialist</label>
                    <form:input path="specialist" class="form-control"/>
                </div>

                <div class="mb-3">
                    <label class="form-label">City</label>
                    <form:input path="city" class="form-control"/>
                </div>

                <div class="mb-3">
                    <label class="form-label">Country</label>
                    <form:input path="country" class="form-control"/>
                </div>

                <div class="text-center mt-3">
                    <input type="submit" value="Add Doctor" class="btn btn-warning">
                </div>

            </form:form>

        </div>
    </div>

</div>

</body>
</html> 