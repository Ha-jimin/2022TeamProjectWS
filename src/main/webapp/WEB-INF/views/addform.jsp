<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>게시글 추가</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
<h3>새로운 내용 추가</h3>
<form action="addok" method="POST">
  <table class="table table-bordered">
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>카테고리</td><td><input type = "checkbox" name = "category1" value = "1" />학업
    <input type = "checkbox" name = "category2" value = "2" />과제
    <input type = "checkbox" name = "category3" value = "3" />취미</td></tr>
    <tr><td>To-Do-List 내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><td>마감일</td><td><input type = "date" name = "date"></td></tr>
  </table>
  <button type="submit">
    </i> 게시글 등록
  </button>
  <button type="button"  onclick="location.href='list'">
    </i> 취소하기
  </button>
</form>
</body>
</html>