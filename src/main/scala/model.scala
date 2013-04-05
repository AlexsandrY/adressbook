package org.adressbook

import pro.savant.circumflex._, orm._
import java.util.Date
import org.eclipse.jetty.server.Authentication.User

class Contact
    extends Record[Long, Contact]
    with IdentityGenerator[Long, Contact] {

  def PRIMARY_KEY: ValueHolder[Long, Contact] = id
  def relation: Relation[Long, Contact] = Contact

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val firstName = "firstName".HTML.NOT_NULL
  val secondName = "secondName".HTML.NOT_NULL
  val surName = "surName".HTML.NOT_NULL
  val post = "post".HTML.NOT_NULL("")
  val company = "company".HTML.NOT_NULL("")
  val address = "address".HTML.NOT_NULL("")
  val dateofBirth = "dateofBirth".DATE(new Date)
}

object Contact extends Contact with Table[Long, Contact] {


  validation
      .notEmpty(_.firstName)
      .notEmpty(_.secondName)
      .notEmpty(_.surName)
}

class Phone
    extends Record[Long, Phone]
    with IdentityGenerator[Long, Phone] {

  def PRIMARY_KEY: ValueHolder[Long, Phone] = ???

  def relation: Relation[Long, Phone] = ???

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val phoneType = "phoneType".HTML.NOT_NULL
  val telephoneNumber = "telephoneNumber".HTML.NOT_NULL
}

object Phone extends Phone with Table[Long, Phone] {


  validation
      .notEmpty(_.)


}



