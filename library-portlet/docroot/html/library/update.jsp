<%@include file="/html/library/init.jsp"%>
<h1>Add / Edit Form</h1>



<%
	PortletURL updateBookURL = renderResponse.createActionURL();
	updateBookURL.setParameter(ActionRequest.ACTION_NAME, LibraryConstants.ACTION_UPDATE_BOOK);
%>
<!-- HTML Simple FORM -->
<!--  
<form name="<portlet:namespace/>fm" method="POST"
	action="<%=updateBookURL.toString()%>">
	Book Title: <input type="text" name="<portlet:namespace/>bookTitle" />
	<br />Author: <input type="text" name="<portlet:namespace/>author" />
	<br /> <input type="submit" value="Save" />
</form>
-->
<!-- AUI Simple FORM -->
<aui:form name="fm" method="POST" action="<%=updateBookURL.toString()%>">
	<aui:input name="bookTitle" label="Book Title" />
	<aui:input name="author" helpMessage="ok" />
	<aui:button type="submit" value="Save" />
</aui:form>

<br />
<a href="<portlet:renderURL/>">&laquo; Go Back</a>

<aui:script>
Liferay.Util.focusFormField(
document.<portlet:namespace />fm.<portlet:namespace />bookTitle);
</aui:script>