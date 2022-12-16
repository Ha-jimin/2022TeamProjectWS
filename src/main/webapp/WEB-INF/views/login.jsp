<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>로그인</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
  <style>
    #login-img {
      height: 250px;
    }
    .form-signin {
      max-width: 720px;
      padding: 15px;
    }
  </style>
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
  <form method="post" action="loginOk" id="login-form">
    <img src="../img/jjang.jpg" id="login-img">
    <h1 class="display-4 fw-bold mt-3">To-do-List</h1>
    <h1 class="h3 mb-3 fw-normal">로그인하여 To-do List 를 확인하세요!</h1>
    <div class="form-floating">
      <input type="text" class="form-control" name="userid" id="userid">
      <label for="userid">User ID</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="password">
      <label for="password">Password</label>
    </div>
    <div class="checkbox mt-3 mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-danger" type="submit">Login</button>
    <p class="mt-5 mb-3 text-muted">© 2022 실전프로젝트1</p>
  </form>
</main>
</body>
</html>