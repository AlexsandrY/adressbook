[#ftl]


[#assign content]
<div class="page-header">
  <h2>На этой странице, Вы можете добавлять новые контакты!!!</h2>
</div>
<form action="/"
      method="post"
      class="submission" >
    [#include "create.editing.ftl"/]
  <div class="submits margin-top centered">
    <input type="submit"
           class="btn primary inverse"
           value="${msg['adr.done']}"/>
  </div>
</form>
<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]