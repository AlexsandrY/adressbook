package org.adressbook

import pro.savant.circumflex._, core._, xml._
import java.io.File
import java.util.Date


class EmailTypes
    extends ListHolder[EmailType] with XmlFile {

  def descriptorFile = new File("src/main/resources/email-type.xml")

  def elemName = "email-types"

  def read = {
    case "email-type" => new EmailType
  }
}

class EmailType extends StructHolder {

  def elemName = "email-type"

  val _id = attr("id")
  def id = _id.getOrElse("")

  def title = msg.format("email-type." + id)
}
