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
    @State var flashcardColorDefault:Color = .red
//    @State var sets = [set1(id: 0, pairs: [pairs(term2: term1(termId: 0, term1String: "Term1"), definition2: definition1(definitionId: 0, definitionString: "Test1")), pairs(term2: term1(termId: 1, term1String: "Term2"), definition2: definition1(definitionId: 1, definitionString: "Def1"))], desription: "A set for test")]
    var body: some View {
        VStack{
            flipcard(term1: "", definition1: "", flipped: false,flashcardcolor1: $flashcardColorDefault)
                                .frame(width: 300, height: 200)
            colorPicker()

            setCreator(term1: "", definition1: "")
//            Button {
//                
//            } label: {
//                ForEach(sets) { help in
//                    Text(help.desription)
//                }
//            }
        }
    }
}
