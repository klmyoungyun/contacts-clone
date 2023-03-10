//
//  CreateContactUseCase.swift
//  Contacts-clone
//
//  Created by 김영균 on 2023/01/12.
//

import Foundation

import RxSwift

protocol CreateContactUseCase {
  func execute(with information: Information) -> Observable<Result<Contact, ErrorType>>
}
