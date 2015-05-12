<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form id="reg" class="form-horizontal" method="POST" modelAttribute="user">
    <h3 class="form-signin-heading">Registration on the site QuestionAnswer</h3>

    <div class="form-group">
        <label for="inputUsername" class="col-sm-2 control-label">Username*</label>

        <div class="col-sm-6">
            <form:input path="username" id="inputUsername" class="form-control" placeholder="Minimum 6 character"/>
        </div>
    </div>

    <div class="form-group">
        <label for="inputEmail" class="col-sm-2 control-label">Email*</label>

        <div class="col-sm-6">
            <form:input path="email" id="inputEmail" type="email" class="form-control"/>
        </div>
    </div>

    <div class="form-group">
        <label for="inputPassword" class="col-sm-2 control-label">Password*</label>
        <div class="col-sm-6">
            <form:input path="password" type="password" class="form-control" id="inputPassword" placeholder="Minimum 6 character"/>
        </div>
    </div>

    <div class="form-group">
        <label for="inputRepeatPassword" class="col-sm-2 control-label">Repeat password*</label>
        <div class="col-sm-6">
            <input type="password" class="form-control" id="inputRepeatPassword" placeholder="Minimum 6 character">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-6">
            <button type="submit" class="btn btn-default">Sign up</button>
        </div>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form:form>