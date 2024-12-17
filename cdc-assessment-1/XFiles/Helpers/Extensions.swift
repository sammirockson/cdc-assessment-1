//
//  Extensions.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//

import UIKit


extension Bundle {
    var cryptoJson: String? {
        guard let filePath = Bundle.main.path(forResource: "crypto_list", ofType: ".json") else { return nil }
        let url = URL(fileURLWithPath: filePath)
        guard let data = try? Data(contentsOf: url),
        let jsonStr = String(data: data, encoding: .utf8) else { return nil }
        return jsonStr
    }
}



let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height
let defaultWidth: CGFloat = UIDevice.isPad ? 810.0 : 375.0

var adaptAllSizeScale: CGFloat = {
    let scale = screenWidth / defaultWidth
    return scale
}()

var adaptBigScreenSizeScale:CGFloat = {
    var scale:CGFloat = 1.0
    if screenWidth > defaultWidth {
        scale = screenWidth / defaultWidth
    }
    return scale
}()


var adaptBigScreenFontScale: CGFloat = {
    var scale:CGFloat = 1.0
    if screenWidth > defaultWidth {
        scale = screenWidth / defaultWidth
    }
    
    return scale
}()

var adaptAllFontScale: CGFloat = {
    let scale = screenWidth / defaultWidth
    return scale
}()

enum ButtonStatus {
    case Enabled, Disabled, BlueDisabled
}

extension CGFloat {
    var all: CGFloat {
        return adaptAllSizeScale * CGFloat.init(self)
    }
    
    var up: CGFloat {
        return adaptBigScreenSizeScale * CGFloat.init(self)
    }
}

extension Int {
    var all: CGFloat {
        return adaptAllSizeScale * CGFloat.init(self)
    }
    
    var up: CGFloat {
        return adaptBigScreenSizeScale * CGFloat.init(self)
    }
}

extension Double {
    var all: CGFloat {
        return adaptAllSizeScale * CGFloat.init(self)
    }
    
    var up: CGFloat {
        return adaptBigScreenSizeScale * CGFloat.init(self)
    }
}


public extension UIDevice {
    
    class var isPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    class var isPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    class var isTV: Bool {
        return UIDevice.current.userInterfaceIdiom == .tv
    }
    
    class var isCarPlay: Bool {
        return UIDevice.current.userInterfaceIdiom == .carPlay
    }
    
}








enum FontType: String {
    case medium = "AirbnbCerealApp-Medium"
    case light = "AirbnbCerealApp-Light"
    case bold = "AirbnbCerealApp-Bold"
    case regular = "AirbnbCerealApp-Book"
    case extraBold = "AirbnbCerealApp-ExtraBold"
    case regularBlack = "AirbnbCerealApp-Black"
}

extension UITableViewCell {
    static var identifier: String {
        return String(describing: self)
    }
}


extension UIViewController {
    func navigate(_ toVC: UIViewController, isAnimated: Bool = true) {
        self.navigationController?.pushViewController(toVC, animated: isAnimated)

    }
}
