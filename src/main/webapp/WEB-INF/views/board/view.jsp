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
    <div class="fs-1 fw-bold text-bg-warning text-center">VIEW</div>
    <div class="container">
      <table class="table">
        <thead>
          <tr>
            <th class="fs-2">/board/view</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="board" items="${boardList}" varStatus="statue">
          <c:set var="boardTitle" value="request.getAttribute('title')" />
          <c:if test="${board.title eq boardTitle}">
          <tr>
            <td class="fs-5">${board.userName}</td>
          </tr>
          <tr>
            <th class="fs-4">
              ${board.title}
            </th>
          </tr>
          <tr>
            <td>
              ${board.content}
            </td>
          </tr>
          <tr>
            <td>2023.01.04</td>
          </tr>
          </c:if>
        </c:forEach>
        </tbody>
      </table>
        <div class="d-flex justify-content-between">
            <div class="item">
                <form action="/board/list">
                    <button class="btn btn-outline-dark fw-bold">뒤로</button>
                </form>
            </div>
            <div class="item">
                <form action="/board/edit" method="post">
                    <button class="btn btn-warning fw-bold">수정</button>
                </form>
            </div>
        </div>
      </div>
    </div>
  </body>
</html>
