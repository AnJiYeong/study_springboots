<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
            <td></td>
          </tr>
          <tr>
            <th>title</th>
            <th>content</th>
            <th>userName</th>
            <th>date</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="board" items="${boardList}" varStatus="status">
          <tr>
            <td>
              <a
                href="/board/view?title=${board.title}"
                class="text-dark fw-bold"
                style="text-decoration: none"
                >${board.title}</a
              >
            </td>
            <td>
              ${board.content}
            </td>
            <td>${board.userName}</td>
            <td>2023.01.04</td>
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
