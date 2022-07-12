<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../includes/header.jsp"/>
<body>
<jsp:include page="../includes/navbar.jsp" />
<div class="container">
    <div class="row pt-3">
        <div class="card" style="width: 100%">
            <div class="card-header">
                <c:if test="${empty post}">Create new topic</c:if>
                <c:if test="${not empty post}">Edit topic</c:if>
            </div>
            <div class="card-body">
                <form action="<c:url value='/post/save'/>" method='POST'>
                    <div class="form-group">
                        <label>Topic name:</label>
                        <input
                                type='text'
                                name='name'
                                class="form-control"
                                required
                                value="<c:if test="${not empty post}"><c:out value="${post.name}"/></c:if>"
                        >
                    </div>
                    <div class="form-group">
                        <label>Description:</label>
                        <textarea
                                name="description"
                                class="form-control"
                                required
                        ><c:if test="${not empty post}"><c:out value="${post.description}"/></c:if></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
