<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="utf-8">--%>
<%--  <title>Log in with your account</title>--%>
<%--  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">--%>
<%--</head>--%>

<%--<body>--%>
<%--<div>--%>
<%--  <table>--%>
<%--    <thead>--%>
<%--    <th>ID</th>--%>
<%--    <th>UserName</th>--%>
<%--    <th>Password</th>--%>
<%--    <th>Roles</th>--%>
<%--    </thead>--%>
<%--    <c:forEach items="${allUsers}" var="user">--%>
<%--      <tr>--%>
<%--        <td>${user.id}</td>--%>
<%--        <td>${user.username}</td>--%>
<%--        <td>${user.password}</td>--%>
<%--        <td>--%>
<%--          <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--          <form action="${pageContext.request.contextPath}/admin" method="post">--%>
<%--            <input type="hidden" name="userId" value="${user.id}"/>--%>
<%--            <input type="hidden" name="action" value="delete"/>--%>
<%--            <button type="submit">Delete</button>--%>
<%--          </form>--%>

<%--        </td>--%>

<%--      </tr>--%>
<%--    </c:forEach>--%>
<%--  </table>--%>
<%--  <a href="/">Главная</a>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Admin Panel</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>
<div class="container mt-5">
  <h2>Admin Panel</h2>
  <div class="table-responsive">
    <table class="table table-striped">
      <thead class="thead-dark">
      <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Password</th>
        <th>Roles</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${allUsers}" var="user">
        <tr>
          <td>${user.id}</td>
          <td>${user.username}</td>
          <td>${user.password}</td>
          <td>
            <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>
          </td>
          <td>
            <form class="d-inline" action="${pageContext.request.contextPath}/admin" method="post">
              <input type="hidden" name="userId" value="${user.id}"/>
              <input type="hidden" name="action" value="delete"/>
              <button type="submit" class="btn btn-danger">Delete</button>
            </form>
            <form class="d-inline" action="${pageContext.request.contextPath}/admin" method="post">
              <input type="hidden" name="userId" value="${user.id}"/>
              <input type="hidden" name="action" value="editRole"/>
              <div class="form-group">
                <select class="form-control" name="role">
                  <option value="ROLE_USER">User</option>
                  <option value="ROLE_ADMIN">Admin</option>
                </select>
              </div>
              <button type="submit" class="btn btn-primary">Change Role</button>
            </form>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
  <a href="/">Home</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
