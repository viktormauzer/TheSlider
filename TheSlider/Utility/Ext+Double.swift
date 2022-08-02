//
//  Ext+Double.swift
//  TheSlider
//
//  Created by Viktor Mauzer on 02.08.2022..
//

import Foundation

extension Double {
    func formattedPrice() -> String {
        var formattedPriceString = ""
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale(identifier: "de_DE")
        if let formattedPrice = numberFormatter.string(from: self as NSNumber) {
            formattedPriceString = formattedPrice
        }
        return formattedPriceString
    }
}
