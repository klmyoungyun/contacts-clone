//
//  RepositoryAssember.swift
//  Contacts-clone
//
//  Created by 김영균 on 2023/01/12.
//

import Foundation

import Swinject

final class RepositoryAssember: Assembly {
  func assemble(container: Container) {
    container.register(ContactRepository.self) { r in
      let coredataStorage = r.resolve(ContactStorage.self)!
      let contactRepository = DefaultContactRepository(coreDataStorage: coredataStorage)
      return contactRepository
    }
  }
}
