[#ftl]


[#assign contact = contact!{}/]
<h2>${contact.secondName!}</h2>
<div class="fieldbox">
    <label for="n">${msg["adr.create.editing.firstName"]}</label>
    <div class="field">
        <div class="input">
            <input id="n"
                   type="text"
                   class="focus"
                   value="${contact.firstName!}"
                   name="n"/>
        </div>
    </div>
</div>
<div class="fieldbox">
    <label for="ns">${msg["adr.create.editing.secondName"]}</label>
    <div class="field">
        <div class="input">
            <input id="ns"
                   type="text"
                   class="focus"
                   value="${contact.secondName!}"
                   name="ns"/>
        </div>
    </div>
</div>
<div class="fieldbox">
    <label for="sun">${msg["adr.create.editing.surName"]}</label>
    <div class="field">
        <div class="input">
            <input id="sun"
                   type="text"
                   class="focus"
                   value="${contact.surName!}"
                   name="sun"/>
        </div>
    </div>
</div>
<div class="fieldbox">
    <label for="p">${msg["adr.create.editing.post"]}</label>
    <div class="field">
        <div class="input">
            <input id="p"
                   type="text"
                   class="focus"
                   value="${contact.post!}"
                   name="p"/>
        </div>
    </div>
</div>
<div class="fieldbox">
    <label for="c">${msg["adr.create.editing.company"]}</label>
    <div class="field">
        <div class="input">
            <input id="c"
                   type="text"
                   class="focus"
                   value="${contact.company!}"
                   name="c"/>
        </div>
    </div>
</div>
<div class="fieldbox">
    <label for="a">${msg["adr.create.editing.address"]}</label>
    <div class="field">
        <div class="input">
            <input id="a"
                   type="text"
                   class="focus"
                   value="${contact.address!}"
                   name="a"/>
        </div>
    </div>
</div>
<div class="fieldbox">
    <label for="b">${msg["adr.create.editing.address"]}</label>
    <div class="field">
        <div class="input">
            <input id="b"
                   type="text"
                   class="focus"
                   value="${contact.dateofBirth!}"
                   name="b"/>
        </div>
    </div>
</div>