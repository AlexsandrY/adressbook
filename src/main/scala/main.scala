package org.adressbook

import pro.savant.circumflex._, core._, web._, freemarker._
import java.util.Date


class Main extends Router {
  val log = new Logger("org.adressbook")

  'currentDate := new Date
  'conf := conf


  get("/") = {
    'contact := Contact.all
    ftl("index.ftl")
  }

  get("/create") = ftl("create.ftl")

  post("/?") = {
    try {
      val c = new Contact
      c.firstName:= param("n").trim
      c.secondName:= param("ns").trim
      c.surName:= param("sun").trim
      c.post:= param("p").trim
      c.company:= param("c").trim
      c.address:= param("a").trim
      c.dateofBirth:= param("b").trim
      c.save()
      sendRedirect("/" + c.id() + "/list.of.choice")
    } catch {
      case e: ValidationException =>
        notices.addErrors(e.errors)
        sendRedirect("/create")
    }
  }


  sub("/:id") = {


    val contact = try {
      Contact.get(param("id").toLong).getOrElse(sendError(404))
    } catch  {
      case e: NumberFormatException => sendError(404)
    }
    'contact := contact
    'phones := contact.phones.get

    get("/?") = ftl("/view.ftl")
    get("/phone") = ftl("/create.phone.ftl")
    get("/email") = ftl("/create.email.ftl")
    get("/list.of.choice") = ftl("/list.of.choice.ftl")

    get("/~editing") = ftl("/editing.ftl")
    post("/?") = {
      contact.firstName:=param("n").trim
      contact.secondName:= param("ns").trim
      contact.surName:= param("sun").trim
      contact.post:= param("p").trim
      contact.company:= param("c").trim
      contact.address:= param("a").trim
      contact.dateofBirth:= param("b").trim
      contact.save()
      sendRedirect("/" + contact.id())
    }
    post("/phone") = {
      try {
        val p = new Phone
        p.phoneType := param("ph").trim
        p.telephoneNumber := param("sph").trim
        p.save()
        sendRedirect("/" + contact.id())
      }
      catch {
        case e: ValidationException =>
          notices.addErrors(e.errors)
          sendRedirect("/" + contact.id() + "/phone")
      }
    }
    post("/email") = {
      try {
        val m = new Email
        m.emailType := param("tm").trim
        m.email := param("tmn").trim
        m.save()
        sendRedirect("/" + contact.id())
      }
      catch {
        case e: ValidationException =>
          notices.addErrors(e.errors)
          sendRedirect("/" + contact.id() + "/email")
      }
    }
    get("/~remove") = ftl("/remove.ftl")
    delete("/?") = {
      contact.DELETE_!()
      sendRedirect("/")
    }

    get("/email") = ftl("/create.email.ftl")
  }



}