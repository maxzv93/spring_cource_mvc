<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Show Details<h2>
<br>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

Name <form:input path="name"/>
<br>
<br>
Surname <form:input path="surname"/>
<br>
<br>
Salary <form:input path="salary"/>
<br>
<br>
<input type="submit" value="OK">

</form:form>
</body>

</html>