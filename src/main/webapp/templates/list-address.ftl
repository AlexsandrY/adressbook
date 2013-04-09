[#ftl]


[#assign content]
<h2>Здесь, Вы можете просмотреть свои рецепты</h2>

  [#list contact as c]
  <a href="/${с.id}"
     class="pill primary"
     title="${r.dishName}">${r.dishName}
  </a>

  [/#list]

<a href="/">На главную</a>

[/#assign]


[#include 'list-address.ftl'/]