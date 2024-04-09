<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Главная</title>--%>
<%--  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--%>
<%--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--  <!-- Hero section -->--%>
<%--  <div class="jumbotron mt-5">--%>
<%--    <h1 class="display-4">Добро пожаловать ${pageContext.request.userPrincipal.name}!</h1>--%>
<%--    <p class="lead">Последние новости со всего мира на вашем любимом сайте.</p>--%>
<%--    <hr class="my-4">--%>
<%--    <p>Получайте доступ ко всем новостям, будучи в курсе последних событий.</p>--%>
<%--    <p class="lead">--%>
<%--      <sec:authorize access="isAuthenticated()">--%>
<%--        <a class="btn btn-success btn-lg" href="/news" role="button">Читать новости</a>--%>
<%--      </sec:authorize>--%>
<%--    </p>--%>
<%--  </div>--%>

<%--  <!-- Authentication and Info buttons -->--%>
<%--  <div class="row mb-3">--%>
<%--    <div class="col-md-6">--%>
<%--      <sec:authorize access="!isAuthenticated()">--%>
<%--        <a class="btn btn-primary btn-lg mb-2" href="/login" role="button">Войти</a>--%>
<%--        <a class="btn btn-secondary btn-lg" href="/registration" role="button">Зарегистрироваться</a>--%>
<%--      </sec:authorize>--%>
<%--      <sec:authorize access="isAuthenticated()">--%>
<%--        <a class="btn btn-danger btn-lg" href="/logout" role="button">Выйти</a>--%>
<%--      </sec:authorize>--%>
<%--    </div>--%>
<%--    <div class="col-md-6">--%>
<%--      <sec:authorize access="hasRole('USER')">--%>
<%--        <a class="btn btn-info btn-lg mb-2" href="/news" role="button">Новости (только пользователь)</a>--%>
<%--      </sec:authorize>--%>
<%--      <sec:authorize access="hasRole('ADMIN')">--%>
<%--        <a class="btn btn-warning btn-lg" href="/admin" role="button">Пользователи (только админ)</a>--%>
<%--      </sec:authorize>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>

<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>

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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">Главная</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <sec:authorize access="isAuthenticated()">
        <li class="nav-item active">
          <a class="nav-link" href="/news">Новости</a>
        </li>
      </sec:authorize>
      <sec:authorize access="hasRole('ADMIN')">
        <li class="nav-item">
          <a class="nav-link" href="/admin">Пользователи (только админ)</a>
        </li>
      </sec:authorize>
    </ul>
    <sec:authorize access="isAuthenticated()">
      <span class="navbar-text mr-2">
        Добро пожаловать, ${pageContext.request.userPrincipal.name}!
      </span>
      <a class="btn btn-danger" href="/logout" role="button">Выйти</a>
    </sec:authorize>
    <sec:authorize access="!isAuthenticated()">
      <a class="btn btn-primary mr-2" href="/login" role="button">Войти</a>
      <a class="btn btn-secondary" href="/registration" role="button">Зарегистрироваться</a>
    </sec:authorize>
  </div>
</nav>

<div class="container mt-3">
  <div class="jumbotron">
    <h1 class="display-4">Добро пожаловать на наш сайт!</h1>
    <p class="lead">Последние новости со всего мира на вашем любимом сайте.</p>
    <hr class="my-4">
    <p>Получайте доступ ко всем новостям, будучи в курсе последних событий.</p>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
