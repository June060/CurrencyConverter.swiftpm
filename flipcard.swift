//
//  flipcard.swift
//  CurrencyConverter
//
//  Created by Nick Scott on 4/26/23.
//

import Foundation
import SwiftUI

struct flipcard: View {
    
    @State var term1:String
    @State var definition1: String
    @State var frontCardColor = Color.red
    @State var backCardColor = Color.blue
    @State var flipped = false // state variable used to update the card


    
    var body: some View {
        if let data = UserDefaults.standard.data(forKey: "pair") {
            let pair = try! PropertyListDecoder().decode([pairs].self, from: data)
            ForEach(pair, id: \.self) { pair2 in
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(self.flipped ? .red : .blue) // change the card color when flipped
                        .padding()
                        .rotation3DEffect(self.flipped ? Angle(degrees: 180): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                        .animation(.default)
                        .onTapGesture {
                            // explicitly apply animation on toggle (choose either or)
                            //withAnimation {
                            self.flipped.toggle()
                            //}
                        }
                    Text(flipped ? pair2.term2 : pair2.definition2 )
                        .rotation3DEffect(self.flipped ? Angle(degrees: 0): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                        .animation(.default)
                        .onTapGesture {
                            self.flipped.toggle()
                        }
                }
                .onAppear(perform: {
                })
            }
        }
        
        
    }
}
