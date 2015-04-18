<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="jumbotron">
    <h1>Start here</h1>
    <p class="lead">You can add your question right now</p>
    <p><a class="btn btn-lg btn-success" href="<c:url value="/question"/>" role="button">Ask question</a></p>
</div>

<div>
    <table cellspacing="10">
        <c:forEach items="${questions}" var="question">
            <tr>
                <td>
                    <a href="<c:url value="/question/${question.id}"/>">${question.title}</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>