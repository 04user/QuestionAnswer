<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
    <h2>Ask question</h2>
    <sf:form method="POST" modelAttribute="question">
        <fieldset>
            <table cellspacing="10">
                <tr>
                    <th><label for="question-title">Title:</label></th>
                    <td><sf:input path="title" size="60" id="question-title"/></td>
                </tr>
                <tr>
                    <th></th>
                    <td><sf:textarea path="body" rows="5" cols="60"/>
                    </td>
                </tr>
                <tr>
                    <%--<th><label for="tags">Tags:</label></th>--%>
                    <%--<td><sf:input path="tags" size="60" id="tags"/></td>--%>
                </tr>
                <tr>
                    <th></th>
                    <td><input name="commit" type="submit" value="Post Question"/></td>
                </tr>
            </table>
        </fieldset>
    </sf:form>
</div>