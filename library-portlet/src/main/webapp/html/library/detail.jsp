<%@include file="/html/library/init.jsp"%>
<h1>Book Details</h1>
<%
	LMSBook lmsBook = null;
	long bookId = ParamUtil.getLong(request, "bookId");
	if (bookId > 0L) {
		lmsBook = LMSBookLocalServiceUtil.fetchLMSBook(bookId);
	}
%>
<c:if test="<%=Validator.isNotNull(lmsBook)%>">
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