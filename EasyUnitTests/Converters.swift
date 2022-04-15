//
//  Helpers.swift
//  EasyUnitTests
//
//  Created by Federico on 14/04/2022.
//

import Foundation

class Converters {
    func convertEuroToUSD(euro: String) -> String {
        let usdRate = 1.08
        let euroValue = Double(euro) ?? 0
        
        if euroValue <= 0 {
            return "Please enter a postive number."
        }
        return "$\(String(format:"%.2f", euroValue * usdRate))"
    }
}
