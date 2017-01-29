<%@include file="/html/library/init.jsp"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="com.liferay.portal.kernel.dao.search.ResultRow"%>
<%@page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%
	ResultRow row = (ResultRow) request.getAttribute(WebKeys.SEARCH_CONTAINER_RESULT_ROW);
	LMSBook book = (LMSBook) row.getObject();
	//Edit
	PortletURL editBookURL = renderResponse.createRenderURL();
	editBookURL.setParameter("bookId", Long.toString(book.getBookId()));
	editBookURL.setParameter("jspPage", LibraryConstants.PAGE_UPDATE);
	//View
	PortletURL viewBookURL = renderResponse.createRenderURL();
	//View with popup implementation
	viewBookURL.setWindowState(LiferayWindowState.POP_UP);
	viewBookURL.setParameter("jspPage", LibraryConstants.PAGE_DETAILS);
	viewBookURL.setParameter("showHeader",Boolean.toString(false));

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
	<liferay-ui:icon image="edit" message="Edit Book" url="<%=editBookURL.toString()%>" />	
			<%
				viewBookURL.setParameter("bookId", Long.toString(book.getBookId()));
				String popup = "javascript:popup('" + viewBookURL.toString() + "');";
			%>
			<liferay-ui:icon image="view" message="View Details" url="<%= popup %>" id="simple-dialog-example"/>	
	<%
		deleteBookURL.setParameter("bookId", Long.toString(book.getBookId()));
	%>
	<liferay-ui:icon image="delete" message="Delete Book"
		url="<%=deleteBookURL.toString()%>" />
</liferay-ui:icon-menu>

<aui:script>
function popup(viewBookURL) {
	AUI().use(
			'aui-base',
			'aui-io-plugin-deprecated',
			'liferay-util-window',
			function(A) {
				A.one('#<portlet:namespace />simple-dialog-example').on(
						'click',
						function(event) {
							var popUpWindow = Liferay.Util.Window.getWindow({
								dialog : {
									centered : true,
									constrain2view : true,
									//cssClass: 'yourCSSclassName',
									modal : true,
									resizable : false,
									width : 475
								}
							}).plug(A.Plugin.IO, {autoLoad : false}).render();
							popUpWindow.show();
							popUpWindow.titleNode.html("Book details");
							popUpWindow.io.set('uri',viewBookURL);
							popUpWindow.io.start();
						});
			});
}
</aui:script>