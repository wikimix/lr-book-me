<%@include file="/html/library/init.jsp"%>
<%
	LMSBook lmsBook = null;
	long bookId = ParamUtil.getLong(request, "bookId");
	if (bookId > 0L) {
		lmsBook = LMSBookLocalServiceUtil.fetchLMSBook(bookId);
	}
	String backURL = ParamUtil.getString(request, "backURL");
%>
<c:if test="<%=Validator.isNotNull(lmsBook)%>">
	<liferay-ui:header backLabel="&laquo; Back to List"
		title="Book Details" backURL="<%=backURL%>" />
	<table border="1">
		<tr>
			<td>Book Title</td>
			<td><%=lmsBook.getBookTitle()%></td>
		</tr>
		<tr>
			<td>Author</td>
			<td><%=lmsBook.getAuthor()%></td>
		</tr>
		<tr>
			<td>Date Added</td>
			<td><%=lmsBook.getCreateDate()%></td>
		</tr>
		<tr>
			<td>Last Modified</td>
			<td><%=lmsBook.getModifiedDate()%></td>
		</tr>
	</table>
</c:if>