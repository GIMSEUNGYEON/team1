<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form id="submitForm" action="<%=request.getContextPath() %>/admin/prof.do" >
	<input type="hidden" id ="proNo" name="proNo">
</form>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>교수번호</th>
			<th>교수명</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${proList }" var ="pro">
			<tr>
				<td>
					<a href="javascript:form('${pro.proNo}')">${pro.proNo}</a>
				</td>
				<td>${pro.proName}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<script>
function form(proNo){
	$('#proNo').val(proNo);
	$('#submitForm').submit();
}
</script>