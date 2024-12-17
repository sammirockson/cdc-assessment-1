//
//  CryptoDetailViewController.swift
//  cdc-assessment-1
//
//  Created by Rock$on on 2024/12/18.
//

import UIKit

class CryptoDetailViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    convenience init(_ cryptoModel: CryptoModel) {
        self.init()
        title = cryptoModel.title
    }
}
