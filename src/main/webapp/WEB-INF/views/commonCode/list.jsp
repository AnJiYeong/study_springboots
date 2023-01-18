<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%
       String firstWithRequest = (String)request.getAttribute("firstString");
    %>
    <div>
    <c:forEach var="list" items="${list}">
        <div>${list.get("COMMON_CODE_ID")}</div>
        <div>${list.get("NAME")}</div>
        <div>${list.get("ORDER_NUMBER")}</div>
    </c:forEach>
    </div>
</html>