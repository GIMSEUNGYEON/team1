<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<pre>
message = ${message }
errors = ${errors }
</pre>

<h3>개설강의 목록</h3>

<table class= "table table-bordered">
	<thead>
		<tr>
			<td>교수명</td>
			<td>과목코드</td>
			<td>과목명</td>
			<td>강의요일</td>
			<td>강의시간</td>
			<td>강의실</td>
			<td>이수단위</td>
			<td> </td>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${not empty lectureList }">
				<c:forEach items="${lectureList }" var="lecture">
					<tr>
						<td name="proName">${lecture.proName }</td>
						<td name="subCd">${lecture.subCd }</td>
						<td name="subName">${lecture.subName }</td>
						<td name="lecDay">${lecture.lecDay }</td>
						<td name="lecTime">${lecture.lecTime }</td>
						<td name="lecRoom">${lecture.lecRoom }</td>
						<td name="subCredit">${lecture.subCredit }</td>
						<td>
							<div>
								<button class="myButton btn btn-primary" type="button">수강신청</button>
							</div>
						</td>
					</tr>
				
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="5">개설된 강의가 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>
<script>
function handleClick() {

	var btn = event.target;
	var trTag = btn.parentElement.parentElement.parentElement;
	var tds = trTag.children;
	var form = document.createElement('form');
	    form.action = `<c:url value="/student/classInsert.do" />`;
	    form.method = 'POST'; 

	for (var i = 0; i < tds.length - 1; i++) {
	    var columnName = tds[i].getAttribute('name');
	    var columnValue = tds[i].innerText;
	    var input = document.createElement('input');
	    input.type = 'hidden';  
	    input.name = columnName;
	    input.value = columnValue;
	    form.appendChild(input);
	}
	console.log(form);
	document.body.appendChild(form);
	form.submit();
	return false;
  }

document.querySelectorAll(".myButton").forEach(function(button) {
    button.addEventListener("click", handleClick);
});


</script>