//
//  CryptoModel.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//
import HandyJSON

// Deserialize json into model, alternative is to use Decodable models
class JSONModel: HandyJSON {
    var data: [CryptoModel] = []
    required init() { }
}

class CryptoModel: HandyJSON {
    var title: String = ""
    required init() {}
}
