//
//  ContentView.swift
//  EasyUnitTests
//
//  Created by Federico on 14/04/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(vm.convertedText)")
                .font(.headline)
            
            TextField("Enter a value.", text: $vm.text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .submitLabel(.done)
            
            Button("Convert", action: vm.convertMoney)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
