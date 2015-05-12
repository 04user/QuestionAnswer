<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">

<%--
<form class="form-signin" role="form" name="f" action="<s:url value="/j_spring_security_check"/>" method="POST">
    <h2 class="form-signin-heading">Please sign in</h2>
    <label for="username" class="sr-only">Username</label>
    <input type="text" id="username" class="form-control" placeholder="Username" name="j_username" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="j_password" required>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
</form>
--%>
<form name='f' action='<c:url value="/login"/>' method='POST'>
    <table>
        <tr><td>User:</td><td><input type='text' name='username' value=''></td></tr>
        <tr><td>Password:</td><td><input type='password' name='password'/></td></tr>
        <tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </table>
</form>