<%@ page import="com.oreilly.Poet" %>



<div class="fieldcontain ${hasErrors(bean: poetInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="poet.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${poetInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: poetInstance, field: 'deathDate', 'error')} ">
	<label for="deathDate">
		<g:message code="poet.deathDate.label" default="Death Date" />
		
	</label>
	<g:datePicker name="deathDate" precision="day"  value="${poetInstance?.deathDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: poetInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="poet.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${poetInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: poetInstance, field: 'language', 'error')} ">
	<label for="language">
		<g:message code="poet.language.label" default="Language" />
		
	</label>
	<g:select name="language" from="${poetInstance.constraints.language.inList}" value="${poetInstance?.language}" valueMessagePrefix="poet.language" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: poetInstance, field: 'poems', 'error')} ">
	<label for="poems">
		<g:message code="poet.poems.label" default="Poems" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${poetInstance?.poems?}" var="p">
    <li><g:link controller="poem" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="poem" action="create" params="['poet.id': poetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'poem.label', default: 'Poem')])}</g:link>
</li>
</ul>

</div>

