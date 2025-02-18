//
//  Extentiond.swift
//  Weather
//
//  Created by Sothesom on 30/11/1403.
//

import Foundation

// برای تبدیل داده دما جیسون به عدد آدمیزادی
extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}
