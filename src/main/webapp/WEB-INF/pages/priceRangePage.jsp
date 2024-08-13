<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Filter by Price</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h3>Filter Menu Items by Price</h3>
    <form action="${pageContext.request.contextPath}/menu/price_range" method="get">
        <div class="form-group">
            <label for="minPrice">Min Price:</label>
            <input type="number" step="0.01" class="form-control" id="minPrice" name="minPrice" required>
        </div>
        <div class="form-group">
            <label for="maxPrice">Max Price:</label>
            <input type="number" step="0.01" class="form-control" id="maxPrice" name="maxPrice" required>
        </div>
        <button type="submit" class="btn btn-primary">Filter</button>
    </form>

    <h4>Filtered Menu Items</h4>
    <c:if test="${not empty menuItems}">
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
    </c:if>

    <a href="${pageContext.request.contextPath}/menu" class="btn btn-default">Back to Menu</a>
</div>
</body>
</html>
