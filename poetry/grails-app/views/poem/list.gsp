
<%@ page import="com.oreilly.Poem" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- notice this meta tag
			layout: main
			sitemesh interrogates this and populates with main.gsp
		-->
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'poem.label', default: 'Poem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-poem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-poem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="poemText" title="${message(code: 'poem.poemText.label', default: 'Poem Text')}" />
					
						<g:sortableColumn property="compositionDate" title="${message(code: 'poem.compositionDate.label', default: 'Composition Date')}" />
					
						<g:sortableColumn property="publicationDate" title="${message(code: 'poem.publicationDate.label', default: 'Publication Date')}" />
					
						<g:sortableColumn property="genre" title="${message(code: 'poem.genre.label', default: 'Genre')}" />
					
						<th><g:message code="poem.poet.label" default="Poet" /></th>
					
						<g:sortableColumn property="title" title="${message(code: 'poem.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<!-- the g: is the grails namespace; there's a ton of stuff -->
				<g:each in="${poemInstanceList}" status="i" var="poemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${poemInstance.id}">${fieldValue(bean: poemInstance, field: "poemText")}</g:link></td>
					
						<td><g:formatDate date="${poemInstance.compositionDate}" /></td>
					
						<td><g:formatDate date="${poemInstance.publicationDate}" /></td>
					
						<td>${fieldValue(bean: poemInstance, field: "genre")}</td>
					
						<td>${fieldValue(bean: poemInstance, field: "poet")}</td>
					
						<td>${fieldValue(bean: poemInstance, field: "title")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${poemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
