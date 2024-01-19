<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>교수번호</th>
			<th>교수명</th>
			<th>강의명</th>
			<th>요일</th>
			<th>시간</th>
			<th>강의실</th>
		</tr>
	</thead>
	<tbody>
    <c:forEach items="${prof}" var="prof">
        <c:forEach items="${prof.lectureList}" var="lecture">
            <c:forEach items="${lecture.subjectList}" var="subject">
                <tr>
                    <td>${prof.proNo}</td>
                    <td>${prof.proName}</td>
                    <td>${subject.subName}</td>
                    <td>${lecture.lecDay}</td>
                    <td>${lecture.lecTime}</td>
                    <td>${lecture.lecRoom}</td>
                </tr>
            </c:forEach>
        </c:forEach>
    </c:forEach>
</tbody>
</table>