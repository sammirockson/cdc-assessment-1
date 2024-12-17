//
//  Button.swift
//  cdc-assessment-1
//
//  Created by Rock$on on 2024/12/17.
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
