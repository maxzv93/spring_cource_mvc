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
<form:errors path="name"/>
<br>
<br>
Surname <form:input path="surname"/>
<form:errors path="surname"/>
<br>
<br>
Salary <form:input path="salary"/>
<form:errors path="salary"/>
<br>
Department <form:select path="department">
<form:options items="${employee.departments}"/>
</form:select>

<br><br>
Which car do u want ?
<form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<br><br>

<br><br>
Foreign lang ?
<form:checkboxes path="languages" items="${employee.languageList}"/>
<br><br>
PhoneNumber <form:input path="phoneNumber"/>
<form:errors path="phoneNumber"/>
<br>
<br>
Email <form:input path="email"/>
<form:errors path="email"/>
<br>
<br>

<input type="submit" value="OK">


</form:form>
</body>

</html>