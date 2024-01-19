<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form id="submitForm" action="<%=request.getContextPath() %>/admin/stu.do" >
	<input type="hidden" id="stdNo" name="stdNo">
</form>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>학번</th>
			<th>학생이름</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${stuList }" var ="stu">
			<tr>
				<td>
					<a href="javascript:form('${stu.stdNo}')">${stu.stdNo}</a>
				</td>
				<td>${stu.stdName}</td>

			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
function form(stdNo){
	$('#stdNo').val(stdNo);
	$('#submitForm').submit();
}
</script>