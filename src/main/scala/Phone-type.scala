package org.adressbook

import pro.savant.circumflex._, core._, xml._
import java.io.File
import java.util.Date


class PhoneTypes
    extends ListHolder[PhoneType] with XmlFile {

  def descriptorFile = new File("src/main/resources/phone-type.xml")

  def elemName = "phone-types"

  def read = {
    case "phone-type" => new PhoneType
  }
}

class PhoneType extends StructHolder {

  def elemName = "phone-type"

  val _id = attr("id")
  def id = _id.getOrElse("")

  def title = msg.format("phone-type." + id)
}