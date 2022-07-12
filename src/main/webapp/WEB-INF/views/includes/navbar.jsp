<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/">Forum</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <c:if test="${not empty user}">
                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/logout"><c:out value="${user.username}"/> | Logout</a>
                    </li>
                </c:if>
                <c:if test="${empty user}">
                    <li class="nav-item">
                        <a class="nav-link" href="<%=request.getContextPath()%>/login">Login</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </nav>
</header>
