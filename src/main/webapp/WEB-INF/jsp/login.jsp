<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <meta charset="utf-8">--%>
<%--  <title>Log in with your account</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<sec:authorize access="isAuthenticated()">--%>
<%--  <% response.sendRedirect("/"); %>--%>
<%--</sec:authorize>--%>
<%--<div>--%>
<%--  <form method="POST" action="/login">--%>
<%--    <h2>Вход в систему</h2>--%>
<%--    <div>--%>
<%--      <input name="username" type="text" placeholder="Username"--%>
<%--             autofocus="true"/>--%>
<%--      <input name="password" type="password" placeholder="Password"/>--%>
<%--      <button type="submit">Log In</button>--%>
<%--      <h4><a href="/registration">Зарегистрироваться</a></h4>--%>
<%--    </div>--%>
<%--  </form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link href="/resources/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<sec:authorize access="!isAuthenticated()">
  <section class="h-100 gradient-form" style="background-color: #eee;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-10">
          <div class="card rounded-3 text-black">
            <div class="row g-0">
              <div class="col-lg-6">
                <div class="card-body p-md-5 mx-md-4">

                  <div class="text-center">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                         style="width: 185px;" alt="logo">
                    <h4 class="mt-1 mb-5 pb-1">VHOD V SAIT</h4>
                  </div>

                  <form method="POST" action="${_csrf.action}">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <p>Please login to your account</p>

                    <div class="form-outline mb-4">
                      <input  name="username" id="form2Example11" class="form-control"
                             placeholder="Phone number or email address"/>
                      <label class="form-label" for="form2Example11">Username</label>
                    </div>

                    <div class="form-outline mb-4">
                      <input type="password" name="password" id="form2Example22" class="form-control"/>
                      <label class="form-label" for="form2Example22">Password</label>
                    </div>

                    <div class="text-center pt-1 mb-5 pb-1">
                      <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Log in</button>
                      <a class="text-muted" href="#!">Forgot password?</a>
                    </div>

                    <div class="d-flex align-items-center justify-content-center pb-4">
                      <p class="mb-0 me-2">Don't have an account?</p>
                      <a href="/registration" class="btn btn-outline-danger">Create new</a>
                    </div>

                  </form>

                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                <div class="text-white px-3 py-4 p-md-5 mx-md-4">

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</sec:authorize>
<script src="/resources/js/login.js"></script>
</body>
</html>