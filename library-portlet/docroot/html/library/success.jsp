<%@include file="/html/library/init.jsp" %>
<portlet:renderURL var="updateBookURL">
	<portlet:param name="jspPage" value="<%=LibraryConstants.PAGE_UPDATE%>" />
</portlet:renderURL>

<h1>New book inserted !!</h1>
<br/><a href="<portlet:renderURL/>">&laquo; Go Back</a>
&nbsp;|&nbsp;
<aui:a href="<%=updateBookURL%>">Add Another Book &raquo;</aui:a>