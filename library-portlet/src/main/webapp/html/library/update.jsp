<%@include file="/html/library/init.jsp"%>
<%
	PortletURL updateBookURL = renderResponse.createActionURL();
	updateBookURL.setParameter(ActionRequest.ACTION_NAME, LibraryConstants.ACTION_UPDATE_BOOK);

	LMSBook lmsBook = new LMSBookImpl();
	long bookId = ParamUtil.getLong(request, "bookId");
	if (bookId > 0l) {
		lmsBook = LMSBookLocalServiceUtil.fetchLMSBook(bookId);
	}
%>
<aui:input name="bookId" type="hidden" value="<%=lmsBook.getBookId()%>" />
<br />
<h1>Add / Edit with AUI</h1>

<aui:input name="redirectURL" type="hidden"
	value="<%=renderResponse.createRenderURL().toString()%>" />

<aui:form name="fm" method="POST" action="<%=updateBookURL.toString()%>">
	<aui:input name="bookTitle" label="Book Title" helpMessage="Book title"
		value="<%=lmsBook.getBookTitle()%>">
		<aui:validator name="required" errorMessage="Sorry!" />
	</aui:input>
	<aui:input name="author" helpMessage="Author"
		value="<%=lmsBook.getAuthor()%>">
	</aui:input>
	<aui:button type="submit" value="Save" />
</aui:form>

<br />
<a href="<portlet:renderURL/>">&laquo; Go Back</a>

<hr />

<aui:script>
	Liferay.Util
			.focusFormField(document.<portlet:namespace/>fm.<portlet:namespace/>bookTitle);
</aui:script>
	





