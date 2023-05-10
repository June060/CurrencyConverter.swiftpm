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
            Text(flipped ? term1 : definition1 )
                .rotation3DEffect(self.flipped ? Angle(degrees: 0): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                .animation(.default)
                .onTapGesture {
                    self.flipped.toggle()
                }
        }
        .onAppear(perform: {
            term1 = UserDefaults.standard.string(forKey: "term") ?? ""
            definition1 = UserDefaults.standard.string(forKey: "definition") ?? ""
        }) 
            
        
            
//            term1 = UserDefaults.standard.string(forKey: "term") ?? ""
//            definition1 = UserDefaults.standard.string(forKey: "definition") ?? ""
            
                
            
            
        }
    }

//struct ExampleCard_Previews: PreviewProvider {
//    @State var flashcardColorDefault:Color = .red
//
//    static var previews: some View {
//        flipcard(term1: "", definition1: "",flashcardcolor1: $flashcardColorDefault)
//    }
//}
