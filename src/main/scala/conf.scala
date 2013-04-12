package org.adressbook

import pro.savant.circumflex._, core._, cache._

class ContactConfiguration {

  val _phoneTypes = new CacheCell[PhoneTypes](new PhoneTypes load())
  def phoneTypes = _phoneTypes.get

  val _emailTypes = new CacheCell[EmailTypes](new EmailTypes load())
  def emailTypes = _emailTypes.get
}