<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>게시판</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
<header class="bd-header bg-dark py-3 d-flex align-items-stretch justify-content-md-between flew-wrap border-bottom border-dark">
  <h1 class="d-flex align-items-center fs-4 text-white mb-0 ms-2">
    <i class="bi bi-emoji-smile"> ${user.getUsername()} 님 안녕하세요!</i>
  </h1>
  <div class="col-md-4 text-end">
    <button type="button" class="btn btn-secondary me-2" onclick="location.href='add'">새 글 쓰기</button>
    <button type="button" class="btn btn-light me-2" onclick="location.href='../login/logout'">로그아웃</button>
  </div>
</header>
<br>
<table class="table table-striped table-hover text-center">
  <th>#</th>
  <th>제목</th>
  <th>글쓴이</th>
  <th>카테고리</th>
  <th>할일 내용</th>
  <th>마감일</th>
  <th>등록일</th>
  <th>수정/삭제</th>
  <c:forEach items="${boardList}" var="u">
    <tr>
      <td>${u.seq}</td>
      <td>${u.title}</td>
      <td>${u.writer}</td>
      <td>${u.category}</td>
      <td>${u.content}</td>
      <td>${u.date}</td>
      <td>
        <fmt:parseDate value="${u.regDate}" type="both" pattern="yyyy-MM-dd'T'HH:mm:ss" var="parsedDateTime"/>
        <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${parsedDateTime}"/>
      </td>
      <td>
        <button type="button" class="btn btn-secondary" onclick="location.href='editform/${u.seq}'">수정</button>
        <button type="button" class="btn btn-danger" onclick="delete_ok('${u.seq}')">삭제</button>
      </td>
    </tr>
  </c:forEach>
</table>
<br>
</body>
</html>
<script>
  function delete_ok(seq){
    if(confirm("정말 삭제하시겠습니까?")){
      location.href="deleteok/"+seq;
    }
  }
</script>