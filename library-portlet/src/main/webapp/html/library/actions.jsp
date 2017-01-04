<%@include file="/html/library/init.jsp"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="com.liferay.portal.kernel.dao.search.ResultRow"%>
<%
	ResultRow row = (ResultRow) request.getAttribute(WebKeys.SEARCH_CONTAINER_RESULT_ROW);
	LMSBook book = (LMSBook) row.getObject();
	PortletURL editBookURL = renderResponse.createRenderURL();
	PortletURL viewBookURL = renderResponse.createRenderURL();
	
	//Iterator
	PortletURL iteratorURL = renderResponse.createRenderURL(); 
	iteratorURL.setParameter("jspPage", LibraryConstants.PAGE_LIST);

	//Delete an Entry
	PortletURL deleteBookURL = renderResponse.createActionURL();
	deleteBookURL.setParameter(ActionRequest.ACTION_NAME, LibraryConstants.ACTION_DELETE_BOOK);
	
	//we have set a new parameter “redirectURL” to redirect the control back to the list page after performing delete action. 
	deleteBookURL.setParameter("redirectURL", iteratorURL.toString()); 
%>
<liferay-ui:icon-menu>
	<liferay-ui:icon image="edit" message="Edit Book"
		url="<%=editBookURL.toString()%>" />
	<liferay-ui:icon image="view" message="View Details"
		url="<%=viewBookURL.toString()%>" />
		<% deleteBookURL.setParameter("bookId", Long.toString(book.getBookId())); %>
	<liferay-ui:icon image="delete" message="Delete Book"
		url="<%=deleteBookURL.toString() %>"  />		
</liferay-ui:icon-menu>