[#ftl]


[#assign content]
<h1>${msg["adr.remove"]}</h1>
<form action="/${contact.id}"
      method="post"
      class="submission">
  <input type="hidden" name="_method" value="delete"/>
  <div class="submits margin-top centered">
    <input type="submit"
           class="btn important inverse"
           value="${msg['adr.remove']}"/>
    <span>${msg['adr.or']}</span>
    <a href="/${contact.id}">${msg['adr.cancel']}</a>
  </div>
</form>


<p>...</p>



<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]