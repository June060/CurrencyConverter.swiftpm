//
//  testView.swift
//  CurrencyConverter
//
//  Created by James Howard on 4/26/23.
//

import Foundation
import SwiftUI
//
struct TestView: View {
    
    var body: some View {
        VStack{
            flipcard(term1: "", definition1: "", flipped: false)
                .frame(width: 300, height: 200)
            setCreator()
            
        }
    }
}

