//
//  Untitled.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//

import UIKit
import RxSwift
import RxCocoa
import HandyJSON

struct Crypto {
    var result = PublishSubject<[CryptoModel]>()
    
    func update(_ json: String) {
        guard let jsonModel = JSONModel.deserialize(from: json) else { return }
        result.onNext(jsonModel.data)
        result.onCompleted()
    }
}
