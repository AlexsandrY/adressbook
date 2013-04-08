[#ftl]


[#assign content]
<h1>${msg["adr.delete"]}</h1>
<form action="/${recipe.id}"
      method="post"
      class="submission">
  <input type="hidden" name="_method" value="delete"/>
  <div class="submits margin-top centered">
    <input type="submit"
           class="btn important inverse"
           value="${msg['rec.delete']}"/>
    <span>${msg['or']}</span>
    <a href="/${recipe.id}">${msg['cancel']}</a>
  </div>
</form>


<p>...</p>



<a href="/">На главную</a>
[/#assign]

[#include "layout.ftl"/]