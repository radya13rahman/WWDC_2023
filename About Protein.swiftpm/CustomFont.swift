//
//  customFont.swift
//  About Protein
//
//  Created by Radya Amirur Rahman on 19/04/23.
//


import Foundation
import UIKit
import SwiftUI

struct CustomFonts {
    
    private init() {
        
        let font1 = Bundle.main.url(forResource: "Satoshi-Regular", withExtension: "otf")
        
        CTFontManagerRegisterFontsForURL(font1! as CFURL, CTFontManagerScope.process, nil)
    }
    
    static let custom1 = CustomFonts()
    
    func font1(size: CGFloat) -> UIFont {
        return UIFont(name: "Satoshi-Regular", size: size)!
    }
}

struct CustomFonts2 {
    
    private init() {
        
        let font2 = Bundle.main.url(forResource: "Satoshi-Bold", withExtension: "otf")
        
        CTFontManagerRegisterFontsForURL(font2! as CFURL, CTFontManagerScope.process, nil)
    }
    
    static let custom2 = CustomFonts2()
    
    func font2(size: CGFloat) -> UIFont {
        return UIFont(name: "Satoshi-Bold", size: size)!
    }
}
