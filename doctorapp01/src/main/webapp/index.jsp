<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Portal</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color: #b1e6bc">

<div class="container mt-5">

    <h1 class="text-center fw-bold">Doctor Portal</h1>

    <a href="doctorform" class="btn btn-info fw-bold mt-3">
        Add New Doctor
    </a>

    <table class="table table-info table-bordered mt-4">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Email</th>
                <th>Specialist</th>
                <th>City</th>
                <th>Country</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="doc" items="${list}">
                <tr>
                    <td>${doc.id}</td>
                    <td>${doc.name}</td>
                    <td>${doc.email}</td>
                    <td>${doc.specialist}</td>
                    <td>${doc.city}</td>
                    <td>${doc.country}</td>
                    <td>
                        <a href="editdoctorform/${doc.id}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="deletedoctor/${doc.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>

    </table>

</div>

</body>
</html>