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
    <div class="container">
      <form action="" method="post">
        <table class="table">
          <thead>
            <tr>
              <th class="fs-2">form</th>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>title</th>
              <td>
                <input class="form-control" type="text" name="title" id="" />
              </td>
            </tr>
            <tr>
              <th>content</th>
              <td>
                <div class="h-50">
                  <textarea
                    class="form-control"
                    name=""
                    id=""
                    cols="30"
                    rows="10"
                  ></textarea>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
        <div class="text-end">
          <button class="btn btn-primary" type="submit">등록</button>
        </div>
      </form>
    </div>
  </body>
</html>
