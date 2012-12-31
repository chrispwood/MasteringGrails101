<%@ page import="com.oreilly.Poet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<!-- notice the i18n support here -->
		<g:set var="entityName" value="${message(code: 'poet.label', default: 'Poet')}" />
		<title>All Poems of ${poet.name}</title> <!-- not worrying about i18n here -->
	</head>
	<body>
		<a href="#list-poet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		
		<h1>${poet.name}</h1>
		<ul>
			<g:each in="${poet.poems}" var="poem">
				<li>${poem.title}</li>
			</g:each>
		</ul>
	</body>
</html>