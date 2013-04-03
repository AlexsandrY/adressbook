package org.adressbook

import pro.savant.circumflex._, core._, web._, freemarker._
import java.util.Date

class Main extends Router {
  val log = new Logger("org.adressbook")

  'currentDate := new Date

  get("/test") = "I'm fine, thanks!"
  get("/") = ftl("index.ftl")
  get("/create") = ftl("create.ftl")


}