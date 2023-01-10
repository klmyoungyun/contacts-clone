//
//  Reactive+.swift
//  Contacts-clone
//
//  Created by 김영균 on 2023/01/09.
//

import UIKit

import RxCocoa
import RxSwift

extension Reactive where Base: UIViewController {
  var viewWillAppear: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewWillAppear)).map { _ in }
    return ControlEvent(events: source)
  }
}
