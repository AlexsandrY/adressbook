[#ftl]


[#assign content]
<h1>Просмотр cписка контактов</h1>

<p>${contact.firstName!}</p>
<p>${contact.secondName!}</p>
<p>${contact.surName!}</p>
<p>${contact.post!}</p>
<p>${contact.company!}</p>
<p>${contact.address!}</p>
<p>${contact.dateofBirth!}</p>
<h4>${phones.telephoneNumber}</h4>
<div class="left-float">
  <a href="/${contact.id}/~remove"
     class="btn important inverse"
     title="${msg['adr.remove']}">${msg["adr.remove"]}
  </a>
</div>
<div class="left-float">
  <a href="/${contact.id}/~editing"
     class="btn primary inverse"
     title="${msg['adr.editing']}">${msg["adr.editing"]}
  </a>
</div>
<br/>
<div class="centered margin-top">
  <a href="/"
     title="${msg['adr.list-addressbook']}">${msg['adr.list-addressbook']}
  </a>
</div>
[/#assign]

[#include "layout.ftl"/]