package org.adressbook

import pro.savant.circumflex._, orm._
import java.util.Date


class Contact
    extends Record[Long, Contact]
    with IdentityGenerator[Long, Contact] {

  def PRIMARY_KEY: ValueHolder[Long, Contact] = id
  def relation: Relation[Long, Contact] = Contact

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val firstName = "first_name".HTML.NOT_NULL
  val secondName = "second_name".HTML.NOT_NULL
  val surName = "sur_name".HTML.NOT_NULL
  val post = "post".HTML.NOT_NULL("")
  val company = "company".HTML.NOT_NULL("")
  val address = "address".HTML.NOT_NULL("")
  val dateofBirth = "date_of_birth".HTML.NOT_NULL("")
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

  def PRIMARY_KEY = id
  def relation = Phone

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val phoneType = "phoneType".HTML.NOT_NULL
  val telephoneNumber = "telephoneNumber".HTML.NOT_NULL
}

object Phone extends Phone with Table[Long, Phone] {


  validation
      .notEmpty(_.phoneType)
      .notEmpty(_.telephoneNumber)
}

class Email
    extends Record[Long, Email]
    with IdentityGenerator[Long, Email] {

  def PRIMARY_KEY = id
  def relation = Email

  val id = "id".BIGINT.NOT_NULL.AUTO_INCREMENT
  val emailType = "emailType".HTML.NOT_NULL
  val email = "email".HTML.NOT_NULL("")
}

object Email extends Email with Table[Long, Email]{


  validation
       .unique(_.email)
       .notEmpty(_.email)
       .notEmpty(_.emailType)
}






