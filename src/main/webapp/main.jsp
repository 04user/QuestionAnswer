<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>
        <tiles:getAsString name="title"/>
    </title>
</head>
<body>
    <table>
        <tr>
            <td>
                <tiles:insertAttribute name="header"/>
            </td>
        </tr>
        <tr>
            <td>
                <tiles:insertAttribute name="content"/>
            </td>
        </tr>
        <tr>
            <td>
                <tiles:insertAttribute name="footer"/>
            </td>
        </tr>
    </table>
</body>
</html>