<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!-- Static user bar -->
<nav class="navbar navbar-default navbar-static-top top-bar">
    <div class="container">
        <ul class="nav navbar-nav right">
            <li role="presentation" class="nav-item"><a href="<c:url value="/signin"/>" class="navbar-link">Sign in</a>
            </li>
            <li role="presentation" class="nav-item"><a href="<c:url value="/registration"/>" class="navbar-link">Registration</a>
            </li>
            <li role="presentation" class="nav-item">

                <form name="logout" action="<c:url value="/logout"/>" method='POST'>
                    <a href="javascript: submitform()" class="navbar-link">Sign out</a>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <script type="text/javascript">
function submitform()
{
  document.logout.submit();
}
                </script>
            </li>
        </ul>
    </div>
</nav>