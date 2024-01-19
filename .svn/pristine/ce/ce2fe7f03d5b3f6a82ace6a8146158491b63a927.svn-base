<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>'
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>학번</th>
			<th>학생이름</th>
			<th>과목코드</th>
			<th>강의명</th>
			<th>점수(학점)</th>
		</tr>
	</thead>
	<tbody>
    <c:forEach items="${stu}" var="stu">
        <c:forEach items="${stu.subjectList}" var="subject">
            <c:forEach items="${subject.classList}" var="cls">
                <tr>
                    <td>${stu.stdNo}</td>
                    <td>${stu.stdName}</td>
                    <td>${subject.subCd}</td>
                    <td>${subject.subName}</td>
                    <td>${cls.clsScore}</td>
                </tr>
            </c:forEach>
        </c:forEach>
    </c:forEach>
</tbody>
</table>