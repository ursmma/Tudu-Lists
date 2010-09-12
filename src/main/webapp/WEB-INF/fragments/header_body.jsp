<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="header">
    <b><a href="${context}">Tudu Lists</a> &gt;
        <a href="${context}/${page}"> ${pageDescription}</a></b>
    &nbsp;&nbsp;<b>|</b>&nbsp;&nbsp;
    <sec:authorize ifNotGranted="ROLE_USER">
        <a href="javascript:authentication();"><img src="${staticContent}/images/user_suit.png" class="icon"
                                                    alt="User"/> Utilisateur non authentifi&eacute;
        </a>
    </sec:authorize>
    <sec:authorize ifAnyGranted="ROLE_USER">
        <img src="${staticContent}/images/user_suit.png" class="icon" alt="User"/> <a
            href="${baseUrl}/account">${userName}</a>
    </sec:authorize>
    &nbsp;&nbsp;<b>|</b>&nbsp;&nbsp;
    <a href="${context}/help"><img src="${staticContent}/images/help.png" class="icon" alt=""/> Aide</a>
</div>        
<div id="message" class="ui-widget" onclick="hideMessage();">
    <div class="ui-state-highlight ui-corner-all" style="margin-top: 25px; padding:10px">
        <p><span class="ui-icon ui-icon-info" style="float: left; margin-right: .3em;"></span>
            <span id="message-text"></span></p>
    </div>
</div>
<div id="error" class="ui-widget" onclick="hideError();">
    <div class="ui-state-error ui-corner-all" style="margin-top: 25px; padding: 10px">
        <p><span class="ui-icon ui-icon-alert" style="float: left; margin-right: .3em;"></span>
            <span id="error-text"></span></p>
    </div>
</div>