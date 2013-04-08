package org.adressbook

import pro.savant.circumflex._, core._, web._, freemarker._
import java.util.Date

class Main extends Router {
  val log = new Logger("org.adressbook")

  'currentDate := new Date

  get("/test") = "I'm fine, thanks!"
  get("/") = ftl("index.ftl")
  get("/create") = {
    'contact := Contact.all
    ftl("create.ftl")
  }
  get("/view") = ftl("view.ftl")
  get("/editing") = ftl("editing.ftl")
  get("/remove") = ftl("remove.ftl")



}