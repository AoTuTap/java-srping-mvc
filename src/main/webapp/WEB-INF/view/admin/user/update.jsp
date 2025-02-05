<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h3>Create User</h3>
                            <hr />
                            <form:form action="/admin/user/update" method="post" modelAttribute="updateUser">

                                <div class="mb-3" display="none" hidden="true">
                                    <label class="form-label">ID</label>
                                    <form:input type="text" class="form-control" path="id" name="id" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <form:input type="email" class="form-control" path="email" name="email" disable="true" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Phone Number</label>
                                    <form:input type="text" class="form-control" path="phone" name="phone" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Full Name</label>
                                    <form:input type="text" class="form-control" path="fullName" name="fullName" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Address</label>
                                    <form:input type="text" class="form-control" path="address" name="address" />
                                </div>
                                <button type="submit" class="btn btn-warning">Update</button>

                            </form:form>
                        </div>
                    </div>
            </body>

            </html>