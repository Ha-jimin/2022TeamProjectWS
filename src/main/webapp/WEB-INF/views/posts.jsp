<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>게시판</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
<div>
  <text class="text-black">${user.getUsername()} 님 안녕하세요.</text>
  <button type="button" onclick="location.href='../login/logout'">로그아웃</button>
</div>
<br>
<table class="table table-bordered text-center">
  <th>seq</th>
  <th>title</th>
  <th>writer</th>
  <th>Category</th>
  <th>content</th>
  <th>DueDate</th>
  <th>regDate</th>
  <th>Edit/Delete</th>
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
        <button type="button"  onclick="location.href='editform/${u.seq}'">
           수정
        </button>
        <button type="button"  onclick="delete_ok('${u.seq}')">
          삭제
        </button>
      </td>
    </tr>
  </c:forEach>
</table>
<br>
<button type="button" onclick="location.href='add'">
   새 글 쓰기
</button>
</body>
</html>
<script>
  function delete_ok(seq){
    if(confirm("정말 삭제하시겠습니까?")){
      location.href="deleteok/"+seq;
    }
  }
</script>