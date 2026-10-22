<%@ page errorPage="../../../../ErrorPage.jsp" %>

<%@page import="fr.paris.lutece.plugins.mylutece.modules.database.authentication.web.DatabaseJspBean"%>

${ mylutecedatabase_databaseJspBean.init( pageContext.request, DatabaseJspBean.RIGHT_MANAGE_DATABASE_USERS ) }
${ pageContext.setAttribute( 'bKnownEmailType', not empty param.email_type and param.email_type.matches( '(?i)first|other|expired|reactivated|ip_blocked|password_expired|lost_password' ) ) }
${ bKnownEmailType ? '' : pageContext.response.sendRedirect( 'ManageAdvancedParameters.jsp' ) }

<jsp:include page="../../../../AdminHeader.jsp" />

${ bKnownEmailType ? mylutecedatabase_databaseJspBean.getModifyAccountLifeTimeEmails( pageContext.request ) : '' }

<%@ include file="../../../../AdminFooter.jsp" %>
