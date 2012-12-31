
<%@ page import="com.oreilly.Poet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'poet.label', default: 'Poet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-poet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-poet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'poet.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="deathDate" title="${message(code: 'poet.deathDate.label', default: 'Death Date')}" />
					
						<g:sortableColumn property="birthDate" title="${message(code: 'poet.birthDate.label', default: 'Birth Date')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'poet.language.label', default: 'Language')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${poetInstanceList}" status="i" var="poetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${poetInstance.id}">${fieldValue(bean: poetInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${poetInstance.deathDate}" /></td>
					
						<td><g:formatDate date="${poetInstance.birthDate}" /></td>
					
						<td>${fieldValue(bean: poetInstance, field: "language")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${poetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
