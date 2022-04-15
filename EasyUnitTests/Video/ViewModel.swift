//
//  ViewModel.swift
//  EasyUnitTests
//
//  Created by Federico on 14/04/2022.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    @Published var text = ""
    @Published var convertedText = "$0"
    
    private let converter = Converters()
    
    func convertMoney() {
        self.convertedText = converter.convertEuroToUSD(euro: text)
        self.hideKeyboard()
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
