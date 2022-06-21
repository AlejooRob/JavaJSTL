<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core</h1>
        <!--Manipulación de variables -->
        <!--Defining the variable -->
        <c:set var="name" value="Alejandro" />
        <!--We display the value of the variable -->
        Variable nombre: <c:out value="${name}" />
        <br/>
        <!--VariableHTML -->
        <c:out value="<h4>Hola</h4>" escapeXml="false"/>
        <c:set var="flag" value="true" />
        <c:if test="${flag}" >
            The flag is true
        </c:if>
        <br/>
        <c:if test="${param.option != null }" >
            <c:choose>
                <c:when test="${param.option == 1}">
                    <br/>
                    Opción 1 seleccionada
                </c:when>
                <c:when test="${param.option == 2}">
                    <br/>
                    Opción 2 seleccionada
                </c:when>
                <c:otherwise>
                    <br/>
                    Opción desconocida: ${param.option}
                </c:otherwise>
            </c:choose>
        </c:if>
        <!--Iteration of an array -->
        <%
            String names[] = {"Joselyne", "Alejandro", "Samantha"};
            request.setAttribute("names", names);
        %>
        <br/>
        Lista de nombres:
        <br/>
        <ul>
            <c:forEach var="person" items="${names}">
                <li>Nombre: ${person}</li>
            </c:forEach>
        </ul>
    </body>
</html>
