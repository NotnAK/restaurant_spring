<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h3>Menu Items</h3>
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
                <td>
                    <form action="${pageContext.request.contextPath}/menu/delete" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${item.id}"/>
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <h4>Actions</h4>
    <a href="${pageContext.request.contextPath}/menu/add_menuItem" class="btn btn-primary">Add New Menu Item</a>
    <a href="${pageContext.request.contextPath}/menu/price_range_page" class="btn btn-primary">Filter by Price</a>
    <a href="${pageContext.request.contextPath}/menu/discount" class="btn btn-primary">Show Discounted Items</a>
</div>
</body>
</html>
