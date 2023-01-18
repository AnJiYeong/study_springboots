<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
</head>
<body>
  <div class="fs-1 fw-bold text-bg-primary text-center">LIST</div>
    <div class="container">
      <table class="table">
        <thead>
          <tr>
            <th class="fs-2">/board/list</th>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <th>COMMON_CODE_ID</th>
            <th>NAME</th>
            <th>ORDER_NUMBER</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="list" items="${list}">
          <tr>
            <td>${list.get("COMMON_CODE_ID")}
            </td>
            <td>
              ${list.get("NAME")}
            </td>
            <td>${list.get("ORDER_NUMBER")}</td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
      <div class="text-end">
        <a href="/board/form" class="btn btn-outline-primary">글쓰기</a>
      </div>
    </div>
  </body>
</html>