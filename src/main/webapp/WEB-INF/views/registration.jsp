<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<sf:form id="reg" class="form-horizontal" method="POST" modelAttribute="user">
    <h3 class="form-signin-heading">Registration on the site QuestionAnswer</h3>

    <div class="form-group">
        <sf:label path="username" cssClass="col-sm-2 control-label">Username*</sf:label>

        <div class="col-sm-6">
            <sf:input path="username" cssClass="form-control" placeholder="Between 5 and 25 character"/>
            <sf:errors path="username" element="div" class="bg-danger"/>
        </div>
    </div>

    <div class="form-group">
        <sf:label path="email" class="col-sm-2 control-label">Email*</sf:label>

        <div class="col-sm-6">
            <sf:input path="email" type="email" class="form-control"/>
            <sf:errors path="email" class="bg-danger"/>
        </div>
    </div>

    <div class="form-group">
        <sf:label path="password" class="col-sm-2 control-label">Password*</sf:label>
        <div class="col-sm-6">
            <sf:password path="password" class="form-control" placeholder="Between 6 and 16 character"/>
            <sf:errors path="password" class="bg-danger"/>
        </div>
    </div>

    <%--<div class="form-group">
        <label for="inputRepeatPassword" class="col-sm-2 control-label">Repeat password*</label>
        <div class="col-sm-6">
            <input type="password" class="form-control" id="inputRepeatPassword" placeholder="Minimum 6 character">
        </div>
    </div>--%>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-6">
            <button type="submit" class="btn btn-default">Sign up</button>
        </div>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</sf:form>