[#ftl]

[#assign content]
<h2>Адресная книга!!!</h2>
<p>Просмотр контактов.</p>

<div class="submits margin-top centered">
    <a href="/create"
       title="${msg['adr.create']}"
       class="btn primary inverse">${msg['adr.create']}
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

    </li>
    <h3>Список контактов:</h3>
    [#list contact as c]
        <li><a href="/${c.id}"
               title="${c.firstName}">${c.firstName}
        </a></li>
    [/#list]
</ul>

<p style="font-weight:bold">Контакты!!!</p>

[/#assign]

[#include "layout.ftl"/]
