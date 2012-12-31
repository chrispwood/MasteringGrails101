
<%@ page import="com.oreilly.Poet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'poet.label', default: 'Poet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-poet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-poet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list poet">
			
				<g:if test="${poetInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="poet.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${poetInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${poetInstance?.deathDate}">
				<li class="fieldcontain">
					<span id="deathDate-label" class="property-label"><g:message code="poet.deathDate.label" default="Death Date" /></span>
					
						<span class="property-value" aria-labelledby="deathDate-label"><g:formatDate date="${poetInstance?.deathDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${poetInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="poet.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${poetInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${poetInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="poet.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${poetInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${poetInstance?.poems}">
				<li class="fieldcontain">
					<span id="poems-label" class="property-label"><g:message code="poet.poems.label" default="Poems" /></span>
					
						<g:each in="${poetInstance.poems}" var="p">
						<span class="property-value" aria-labelledby="poems-label"><g:link controller="poem" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${poetInstance?.id}" />
					<g:link class="edit" action="edit" id="${poetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
