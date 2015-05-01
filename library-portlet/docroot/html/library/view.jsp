<%@include file="/html/library/init.jsp"%>
<portlet:renderURL var="updateBookURL">
	<portlet:param name="jspPage" value="<%=LibraryConstants.PAGE_UPDATE%>" />
</portlet:renderURL>
<br />
<a href="<%=updateBookURL%>">Add new Book &raquo;</a>
<%
	PortletURL listBooksURL = renderResponse.createRenderURL();
listBooksURL.setParameter("jspPage", "/html/library/list.jsp");
%>
&nbsp;|&nbsp;
<a href="<%=listBooksURL.toString()%>">Show All Books &raquo;</a>


<hr />
<a href="javascript:void();" id="jqueryText">jQuery in action</a>
<div id="sayHelloDiv" style="display: none">jQuery is working</div>
<hr />
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">Tab One</a></li>
		<li><a href="#tabs-2">Tab Two</a></li>
		<li><a href="#tabs-3">Tab Three</a></li>
	</ul>
	<div id="tabs-1">Tab 1 content</div>
	<div id="tabs-2">Tab 2 content</div>
	<div id="tabs-3">Tab 3 content</div>
</div>
<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();
	});
	$(document).ready(function() {
		$('#jqueryText').on('click', function() {
			$('#sayHelloDiv').toggle();
		});
	});
</script>