<%@include file="/html/library/init.jsp"%>


<%
	PortletURL listBooksURL = renderResponse.createRenderURL();
	listBooksURL.setParameter("jspPage",LibraryConstants.PAGE_LIST );
%>
&nbsp;|&nbsp;
<a href="<%=listBooksURL.toString()%>">Show All Books &raquo;</a>


<portlet:renderURL var="updateBookURL">
	<portlet:param name="jspPage" value="<%=LibraryConstants.PAGE_UPDATE%>" />
</portlet:renderURL>
<br />
<a href="<%=updateBookURL%>">Add new Book &raquo;</a>

<hr />
