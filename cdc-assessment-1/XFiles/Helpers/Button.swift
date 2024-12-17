//
//  Button.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//

import UIKit

class Button: UIButton {
    convenience init(font: FontType, size: CGFloat, color: UIColor, text: String) {
        self.init(frame: .zero)
        setTitle(text, for: .normal)
        titleLabel?.font = UIFont(name: font.rawValue, size: size)
        setTitleColor(color, for: .normal)
        self.backgroundColor = .white
    }
}

class Label: UILabel {
    convenience init(name: String, color: UIColor, font: FontType, size: CGFloat) {
      self.init()
      text = name
      textColor = color
      self.font = UIFont(name: font.rawValue, size: size)
      self.backgroundColor = .clear
    }
    
    override init(frame: CGRect) {
      super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
}
