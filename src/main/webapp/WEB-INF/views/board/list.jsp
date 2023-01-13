<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <tr>
            <td>
              <a
                href="/board/view"
                class="text-dark fw-bold"
                style="text-decoration: none"
                >슬기를 떠난 진영, 틈을 노리는 종우 | 솔로지옥2</a
              >
            </td>
            <td>
              민수와 함께 천국도에 간 진영. 그사이 종우는 슬기의 마음을 얻으려
              노력한다.
            </td>
            <td>Netflix Korea</td>
            <td>2023.01.04</td>
          </tr>
          <tr>
            <td>
              <a
                href="/board/view"
                class="text-dark fw-bold"
                style="text-decoration: none"
                >[최초공개] LE SSERAFIM(르세라핌) - ANTIFRAGILE</a
              >
            </td>
            <td>
              #르세라핌 #르세라핌컴백쇼 #LESSERAFIMCOMEBACKSHOW #LESSERAFIM
              #ANTIFRAGILE
            </td>
            <td>Mnet M2 (엠투)</td>
            <td>2022.10.17</td>
          </tr>
        </tbody>
      </table>
      <div class="text-end">
        <a href="/board/form" class="btn btn-outline-primary">글쓰기</a>
      </div>
    </div>
  </body>
</html>
