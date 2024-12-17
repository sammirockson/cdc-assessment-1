//
//  CryptoListTableViewCell.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//

import UIKit
import SnapKit

class CryptoListTableViewCell: UITableViewCell {
    
    private var titleLabel: Label!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(_ cryptoModel: CryptoModel) {
        titleLabel.text = cryptoModel.title
    }
}

// MARK: - Create UI elements
extension CryptoListTableViewCell {
    private func createUI() {
        titleLabel = Label(name: "", color: .black, font: .regular, size: 15)
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15.all)
            make.centerY.equalToSuperview()
        }
        
        let topLine = UIView()
        topLine.backgroundColor = .lightGray
        contentView.addSubview(topLine)
        topLine.snp.makeConstraints { make in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(1.all)
        }
    }
}
