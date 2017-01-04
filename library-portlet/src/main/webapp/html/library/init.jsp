<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@page import="javax.portlet.PortletURL"%>
<%@page import="javax.portlet.ActionRequest"%>
<%@page import="com.library.LibraryConstants"%>
<%@taglib uri="http://liferay.com/tld/aui" prefix="aui"%>
<%@page import="java.util.List"%>
<%@page import="com.slayer.model.LMSBook"%>
<%@page import="com.slayer.service.LMSBookLocalServiceUtil"%>
<%@taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.slayer.model.impl.LMSBookImpl"%>


<portlet:defineObjects />


<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js"></script>