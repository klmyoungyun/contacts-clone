//
//  Contact.swift
//  Contacts-clone
//
//  Created by 김영균 on 2023/01/10.
//

import Foundation

struct Contact {
  var id: UUID
  var information: Information
}

struct Information {
  var firstName: String
  var lastName: String
  var company: String
  var number: String
  var notes: String
}
