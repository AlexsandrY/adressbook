[#ftl]

[#assign content]

<h3>Выбор ввода электронной почты или телефона</h3>

<div class="submits margin-top centered">
  <a href="/${contact.id}/phone"
     title="${msg['adr.phone']}"
     class="btn primary">${msg['adr.phone']}
  </a>
</div>

<div class="submits margin-top centered">
  <a href="/${contact.id}/email"
     title="${msg['adr.email']}"
     class="btn primary">${msg['adr.email']}
  </a>
</div>

[/#assign]


[#include "layout.ftl"/]