[#ftl]


[#assign content]
<div class="page-header">
  <h2>На этой странице, Вы можете редактировать информацию списка контаков.</h2>
</div>
<form action="/${contact.id}"
      method="post"
      class="submission" >
  [#include "create.editing.ftl"/]
  <div class="submits margin-top centered">
    <input type="submit"
           class="btn primary inverse"
           value="${msg['adr.editing']}"/>
  </div>
</form>
<a href="/">На главную</a>

[/#assign]

[#include "layout.ftl"/]