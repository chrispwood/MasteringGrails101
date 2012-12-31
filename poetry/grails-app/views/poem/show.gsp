
<%@ page import="com.oreilly.Poem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'poem.label', default: 'Poem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-poem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-poem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list poem">
			
				<g:if test="${poemInstance?.poemText}">
				<li class="fieldcontain">
					<span id="poemText-label" class="property-label"><g:message code="poem.poemText.label" default="Poem Text" /></span>
					
						<span class="property-value" aria-labelledby="poemText-label"><g:fieldValue bean="${poemInstance}" field="poemText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${poemInstance?.compositionDate}">
				<li class="fieldcontain">
					<span id="compositionDate-label" class="property-label"><g:message code="poem.compositionDate.label" default="Composition Date" /></span>
					
						<span class="property-value" aria-labelledby="compositionDate-label"><g:formatDate date="${poemInstance?.compositionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${poemInstance?.publicationDate}">
				<li class="fieldcontain">
					<span id="publicationDate-label" class="property-label"><g:message code="poem.publicationDate.label" default="Publication Date" /></span>
					
						<span class="property-value" aria-labelledby="publicationDate-label"><g:formatDate date="${poemInstance?.publicationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${poemInstance?.genre}">
				<li class="fieldcontain">
					<span id="genre-label" class="property-label"><g:message code="poem.genre.label" default="Genre" /></span>
					
						<span class="property-value" aria-labelledby="genre-label"><g:fieldValue bean="${poemInstance}" field="genre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${poemInstance?.poet}">
				<li class="fieldcontain">
					<span id="poet-label" class="property-label"><g:message code="poem.poet.label" default="Poet" /></span>
					
						<span class="property-value" aria-labelledby="poet-label"><g:link controller="poet" action="show" id="${poemInstance?.poet?.id}">${poemInstance?.poet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${poemInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="poem.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${poemInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${poemInstance?.id}" />
					<g:link class="edit" action="edit" id="${poemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
