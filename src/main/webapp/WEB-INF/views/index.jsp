<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="includes/header.jsp"/>
<body>
<div class="container">
    <div class="row pt-3">
        <h1>Forum</h1>
    </div>
    <div class="row pt-3">
        <a href="<c:url value='/post/create'/>" class="btn btn-primary">Add topic</a>
    </div>
    <div class="row pt-3">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Topic</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="post" items="${posts}">
                <tr>
                    <td><c:out value="${post.name}"/></td>
                    <td>
                        <a href="<c:url value='/post/update?id=${post.id}'/>">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
