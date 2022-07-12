<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="includes/header.jsp" />
<body>
<div class="container">
    <div class="row pt-5">
        <div class="card" style="width: 100%">
            <div class="card-header">
                Registration form
            </div>
            <div class="card-body">
                <form action="<c:url value='/register'/>" method='POST'>
                    <div class="form-group">
                        <label>Login:</label>
                        <input type='text' name='username' class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <input type='password' name='password' class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
