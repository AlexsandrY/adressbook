[#ftl]

[#assign content]
<h3>Добавьте тип и номер электронной почты</h3>

<form action="/${contact.id}/email"
      method="post"
      class="submission" >
  [#include "create.editing.ftl"/]
  <div class="fieldbox">
    <label for="tm">${msg["adr.phone-type"]}</label>
    <div class="field">
      <div class="input">
        <input id="tm"
               type="text"
               class="focus"
               value="${contact.dateofBirth!}"
               name="tm"/>
      </div>
    </div>
  </div>
  <div class="input">
    <select id="tmn"
            class="select2"
            name="tmn">
      [#list conf.emailTypes.children as t]
        <option value="${t.title}" selected="selected">${t.title}</option>
      [/#list]
    </select>
  </div>
</form>

[/#assign]


[#include "layout.ftl"/]