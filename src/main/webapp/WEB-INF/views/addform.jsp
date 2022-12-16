<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>게시글 추가</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
  <style>
    .column1 {
      background-color: gray;
    }
  </style>
</head>
<body class="text-center">
<header class="bd-header bg-dark py-3 d-flex align-items-stretch justify-content-md-between flew-wrap border-bottom border-dark">
  <h1 class="d-flex text-center fs-4 text-white mb-0 ms-2">
    <i class="bi bi bi-card-checklist"> 새 글쓰기</i>
  </h1>
</header>
<div class="container py-3">
<form action="addok" method="POST">
  <table class="table table-bordered">
    <tr><td class="column1">제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td class="column1">글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td class="column1">카테고리</td>
      <td>
        <input type="checkbox" name="category1" value="1" /> 학업
        <input type="checkbox" name="category2" value="2" /> 과제
        <input type="checkbox" name="category3" value="3" /> 취미
      </td>
    </tr>
    <tr><td class="column1">To-Do-List 내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><td class="column1">마감일</td><td><input type = "date" name = "date"></td></tr>
  </table>
  <button type="submit" class="btn btn-secondary">등록</button>
  <button type="button" class="btn btn-danger" onclick="location.href='posts'">취소</button>
</form>
</div>
</body>
</html>