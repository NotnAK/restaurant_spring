<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discounted Items</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h3>Discounted Menu Items</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Weight</th>
            <th>Discount</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${menuItems}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.weight}</td>
                <td><c:choose>
                    <c:when test="${item.discount}">Yes</c:when>
                    <c:otherwise>No</c:otherwise>
                </c:choose></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/menu" class="btn btn-default">Back to Menu</a>
</div>
</body>
</html>
