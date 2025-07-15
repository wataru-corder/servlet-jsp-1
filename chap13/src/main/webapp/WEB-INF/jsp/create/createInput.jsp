<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<jsp:include page="../common/head.jsp" />
<body>
	<jsp:include page="../common/header.jsp" />
	
	<div class="container">
  	<main>
  		<h2>新規社員登録</h2>
  		<div class="error">
  		  <ul>
  			<c:forEach var="errorMsg" items="${errorList}">
  			  <li><c:out value="${errorMsg}" /></li>
  			</c:forEach>
  			</ul>
  		</div>
			<form action="createConfirm" method="post">
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" name="id"
						           value="<c:out value="${emp.id}" />"></td>
					</tr>
					<tr>
						<th>名前</th>
						<td><input type="text" name="name"
						           value="<c:out value="${emp.name}" />"></td>
					</tr>
					<tr>
					  <th>年齢</th>
					  <td><input type="text" name="age"
					             value="<c:out value="${emp.age}" />"></td>
					</tr>
				</table>
				<a href="list"><button type="button">もどる</button></a>
				<input type="submit" value="確認">
			</form>
	  </main>
	  <jsp:include page="../common/aside.jsp" />
	</div> <!-- .contaier end -->
	
  <jsp:include page="../common/footer.jsp" />
</body>
</html>