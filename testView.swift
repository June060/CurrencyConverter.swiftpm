//
//  testView.swift
//  CurrencyConverter
//
//  Created by James Howard on 4/26/23.
//

import Foundation
import SwiftUI

struct TestView: View {
    @State var sets = [set1(pairs: [pairs(term2: term1(termId: 0, term1String: "Test1"), definition2: definition1(definitionId: 0, definitionString: "Test1")), pairs(term2: term1(termId: 1, term1String: "Term2"), definition2: definition1(definitionId: 1, definitionString: "Def1"))], desription: "A set for test", setId: 0)]
    var body: some View {
        VStack{
            Button {
                
            } label: {
                ForEach(sets) { set in
                    Text(set.desription)
                }
            }
        }
    }
}
