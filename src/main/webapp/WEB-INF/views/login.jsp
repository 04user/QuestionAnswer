<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">

<form class="form-signin" name="f" action="/j_spring_security_check" method="POST">
    <h2 class="form-signin-heading">Please sign in</h2>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="j_username" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="j_password" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
</form>