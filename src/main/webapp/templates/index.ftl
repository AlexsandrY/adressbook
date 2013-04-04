[#ftl]

[#assign content]
<h2>Адресная книга!!!</h2>
<p>Добавьте новый контакт.</p>

<div>
  <a href="/create"
     title="${msg['adr.create']}"
     class="btn primary inverse">${msg['adr.create']}
  </a>

  <a href="/view"
     title="${msg['adr.view']}"
     class="btn primary">${msg['adr.view']}
  </a>

  <a href="/editing"
     title="${msg['adr.editing']}"
     class="btn primary">${msg['adr.editing']}
  </a>

  <a href="/remove"
     title="${msg['adr.remove']}"
     class="btn important inverse">${msg['adr.remove']}
  </a>
</div>


<ul>
  <li><strong>Адресная книга</strong>
    &mdash; это веб-приложение представляет собой адресную книгу. В адресной книге вы храните ваших
    близких и знакомых людей, их контакты, адреса, дни рождения. Каждый человек имеет такие свойства как имя,
    фамилия, номер телефона или адрес электронной почты.

    <a href="http://org.adressbook/"
       target="_blank">
      Адресная книга.</a>.
  </li>
  <li><strong>Ниже представлены основные функции для работы с адресной книгой:</strong>
    <ul>
      <li><strong>Добавить</strong>
        &mdash; Просмотреть</li>
      <li><strong>Редактировать</strong>
        &mdash;Удалить

      </li>
      <li><strong>Удалить</strong>
        &mdash; ну вы понимаете, что впринцепи тут так же...</li>
      <li><strong>Изменить</strong>
        &mdash; и да, над этим мы тоже работаем...</li>
    </ul>
  </li>

</ul>

<p style="font-weight:bold">Бла бла бла!!!</p>

[/#assign]

[#include "layout.ftl"/]
