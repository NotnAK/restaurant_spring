<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Menu Item</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h3>Add New Menu Item</h3>
    <form action="${pageContext.request.contextPath}/menu/add" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" step="0.01" class="form-control" id="price" name="price" required>
        </div>
        <div class="form-group">
            <label for="weight">Weight:</label>
            <input type="number" step="0.01" class="form-control" id="weight" name="weight" required>
        </div>
        <div class="form-group">
            <label for="discount">Discount:</label>
            <input type="checkbox" id="discount" name="discount">
        </div>
        <button type="submit" class="btn btn-primary">Add Item</button>
    </form>

    <a href="${pageContext.request.contextPath}/menu" class="btn btn-default">Back to Menu</a>
</div>
</body>
</html>
