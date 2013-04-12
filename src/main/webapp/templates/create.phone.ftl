[#ftl]

[#assign content]

<h3>Добавьте тип и номер телефона</h3>

<form action="/${contact.id}/phone"
      method="post"
      class="submission" >
  [#include "create.editing.ftl"/]
<div class="fieldbox">
  <label for="ph">${msg["adr.phone-type"]}</label>
  <div class="field">
    <div class="input">
      <input id="ph"
             type="text"
             class="focus"
             value="${contact.dateofBirth!}"
             name="ph"/>
    </div>
  </div>
</div>
<div class="input">
  <select id="sph"
          class="select2"
          name="sph">
    [#list conf.phoneTypes.children as t]
      <option value="${t.title}" selected="selected">${t.title}</option>
    [/#list]
  </select>
</div>
</form>

[/#assign]


[#include "layout.ftl"/]