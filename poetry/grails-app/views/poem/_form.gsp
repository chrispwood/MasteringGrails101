<%@ page import="com.oreilly.Poem" %>



<div class="fieldcontain ${hasErrors(bean: poemInstance, field: 'poemText', 'error')} ">
	<label for="poemText">
		<g:message code="poem.poemText.label" default="Poem Text" />
		
	</label>
	<g:textArea name="poemText" cols="40" rows="5" maxlength="6000" value="${poemInstance?.poemText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: poemInstance, field: 'compositionDate', 'error')} ">
	<label for="compositionDate">
		<g:message code="poem.compositionDate.label" default="Composition Date" />
		
	</label>
	<g:datePicker name="compositionDate" precision="day"  value="${poemInstance?.compositionDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: poemInstance, field: 'publicationDate', 'error')} ">
	<label for="publicationDate">
		<g:message code="poem.publicationDate.label" default="Publication Date" />
		
	</label>
	<g:datePicker name="publicationDate" precision="day"  value="${poemInstance?.publicationDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: poemInstance, field: 'genre', 'error')} ">
	<label for="genre">
		<g:message code="poem.genre.label" default="Genre" />
		
	</label>
	<g:select name="genre" from="${poemInstance.constraints.genre.inList}" value="${poemInstance?.genre}" valueMessagePrefix="poem.genre" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: poemInstance, field: 'poet', 'error')} required">
	<label for="poet">
		<g:message code="poem.poet.label" default="Poet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="poet" name="poet.id" from="${com.oreilly.Poet.list()}" optionKey="id" required="" value="${poemInstance?.poet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: poemInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="poem.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${poemInstance?.title}"/>
</div>

