package org.adressbook

import pro.savant.circumflex._, core._, web._, freemarker._
import java.util.Date
import org.adressbook

class Main extends Router {
  val log = new Logger("org.adressbook")

  'currentDate := new Date

  get("/") = ftl("index.ftl")

  get("/create") = ftl("create.ftl")

  post("/?") = {
    try {
      val c = new Contact
      c.firstName:= param("n").trim
      c.secondName:= param("ns").trim
      c.surName:= param("sur").trim
      c.post:= param("p").trim
      c.company:= param("c").trim
      c.address:= param("a").trim
      c.dateofBirth:= param("b").trim
      c.save()
      sendRedirect("/" + c.id())
    } catch {
      case e: ValidationException =>
        notices.addErrors(e.errors)
        sendRedirect("/create")
    }
  }

  get("/list") = {
    'contact := Contact.all
    ftl("/list.ftl")
  }

  sub("/:id") = {


    val contact = try {
      Contact.get(param("id").toLong).getOrElse(sendError(404))
    } catch  {
      case e: NumberFormatException => sendError(404)
    }
    'contact := contact

    get("/?") = ftl("/view.ftl")

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
      sendRedirect("/"+ contact.id())
    }
    get("/~remove") = ftl("/remove.ftl")
    delete("/?") = {
      contact.DELETE_!()
      sendRedirect("/list")
    }

  }



}