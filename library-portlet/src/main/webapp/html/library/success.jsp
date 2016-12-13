<%@include file="/html/library/init.jsp"%>
<h1>New book inserted !!</h1>
<br />
<a href="<portlet:renderURL/>">&laquo; Go Back</a>

<portlet:renderURL var="updateBookURL">
	<portlet:param name="jspPage" value="<%=LibraryConstants.PAGE_UPDATE%>" />
</portlet:renderURL>
<br />

<aui:a href="<%=updateBookURL%>">Add new Book &raquo; </aui:a>