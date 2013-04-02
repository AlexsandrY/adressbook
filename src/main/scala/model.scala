package pro.adressbook.savant

import pro.savant.circumflex._, orm._
import java.util.Date

class Сontact
    extends Record[Long, Contact]
    with IdentityGenerator[Long, Contact] {


  def PRIMARY_KEY:
  def relation

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val firstName = "firstName".HTML.NOT_NULL
  val secondName = "secondName".HTML.NOT_NULL


}

