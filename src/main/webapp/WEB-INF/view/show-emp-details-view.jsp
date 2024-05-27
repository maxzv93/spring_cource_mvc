<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<body>
<h2>Employee welcome<h2>
<br>
<br>
<br>

Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your carBrand: ${employee.carBrand}
<br>
Languages:
<ul>
    <c:forEach var="lang" items="${employee.languages}">
    <li>
        ${lang}
    </li>
    </c:forEach>
<ul>
<br>

</body>

</html>