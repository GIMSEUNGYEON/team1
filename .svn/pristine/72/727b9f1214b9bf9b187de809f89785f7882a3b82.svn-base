<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<h3><span>${myClassAndScore[0].stdNo }</span>의 수강목록</h3>
<table class = "table table-bordered">
	<thead>
		<tr>
			<th>과목명</th>
			<th>과목코드</th>
			<th>과목점수</th>
			<th>학점</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${not empty myClassAndScore}">
				<c:forEach items="${myClassAndScore }" var="classMap">
						<tr>
							<td>
								${classMap.subName }
							</td>
							<td>
								${classMap.subCd }
							</td>
							<td>
								${classMap.clsScore }
							</td>
							<td>
								${classMap.grade }
							</td>
						</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="4">수강 중인 강의가 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</tbody>
</table>
<form method="get" action="${pageContext.request.contextPath }/student/lectureList.do">
	<button type="submit" class="btn btn-primary">수강신청 하러 가기</button>
</form>

<li class='page_item'><a href="${pageContext.request.contextPath }/student/lectureList.do">수강신청 하러 가기</a></li>