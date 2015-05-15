<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../nav.jsp"%>
<div style="width: 600">
	<b>分配工作</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
		class="btn btn-primary btn-xs"
		href="${pageContext.request.contextPath}/work/"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新增&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>&nbsp;&nbsp;&nbsp;&nbsp;<a
		class="btn btn-primary btn-xs"
		href="${pageContext.request.contextPath}/workthree/"><b>完成任务</b></a>
</div>
<center>
	<br /> <br /> <br />
	<table class="table table-bordered">
		<tr class="bg-primary">
			<b>
				<td>时间</td>
				<td>工作</td>
				<td>操作</td>
			</b>
		</tr>

		<c:forEach items="${cc}" var="ch" varStatus="list">
			<c:if test="${ch.assignee_id==0}">
				<form action="" method="post">
					<tr class="bg-success">
						<td width="200">${ch.deadline}</td>
						<td>${ch.detail}</td>
						<td width="200"><select name="custId">
								<option>选择客户</option>
								<c:forEach items="${cu}" var="u">
									<option value="${ u.id }">${u.realname}</option>
								</c:forEach>
						</select> <input type="hidden" name="worknum" value="${ch.id}" /> <input
							type="hidden" name="userid" value="${ch.user.id}" /> <input
							type="submit" value="分配" class="btn btn-warning" /></td>
					</tr>
				</form>
			</c:if>


		</c:forEach>
	</table>
</center>
<%@ include file="../footer.jsp"%>