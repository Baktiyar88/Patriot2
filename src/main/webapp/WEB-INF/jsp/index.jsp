<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Главная</title>--%>
<%--  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--%>
<%--  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
<%--  <h3>${pageContext.request.userPrincipal.name}</h3>--%>
<%--  <sec:authorize access="!isAuthenticated()">--%>
<%--    <h4><a href="/login">Войти</a></h4>--%>
<%--    <h4><a href="/registration">Зарегистрироваться</a></h4>--%>
<%--  </sec:authorize>--%>
<%--  <sec:authorize access="isAuthenticated()">--%>
<%--    <h4><a href="/logout">Выйти</a></h4>--%>
<%--  </sec:authorize>--%>
<%--  <h4><a href="/news">Новости (только пользователь)</a></h4>--%>
<%--  <h4><a href="/admin">Пользователи (только админ)</a></h4>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <title>Главная</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <div class="jumbotron mt-3">
    <h1 class="display-4">${pageContext.request.userPrincipal.name}</h1>
  </div>
  <div class="row">
    <div class="col-md-6">
      <sec:authorize access="!isAuthenticated()">
        <a class="btn btn-primary btn-lg" href="/login" role="button">Войти</a>
        <a class="btn btn-secondary btn-lg" href="/registration" role="button">Зарегистрироваться</a>
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
        <a class="btn btn-danger btn-lg" href="/logout" role="button">Выйти</a>
      </sec:authorize>
    </div>
    <div class="col-md-6">
      <a class="btn btn-info btn-lg" href="/news" role="button">Новости (только пользователь)</a>
      <a class="btn btn-warning btn-lg" href="/admin" role="button">Пользователи (только админ)</a>
    </div>
  </div>
</div>
</body>
</html>
