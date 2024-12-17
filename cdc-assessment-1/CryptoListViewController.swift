//
//  CryptoListViewController.swift
//  cdc-assessment-1
//
//  Created by Rock$on on 2024/12/17.
//

import UIKit
import RxSwift
import SnapKit

class CryptoListViewController: UIViewController {
    
    private var cryptoTableView: UITableView!
    private var loadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.setUpUI()
    }
    
}

extension CryptoListViewController {
    
    private func setUpUI() {
        loadButton = Button(font: .medium, size: 15, color: .systemBlue, text: "Load Crypto")
        view.addSubview(loadButton)
        loadButton.snp.makeConstraints { make in
            make.width.equalTo(screenWidth/2)
            make.height.equalTo(100.all)
            make.centerX.centerY.equalToSuperview()
        }
    }
}
