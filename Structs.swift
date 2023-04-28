import SwiftUI

struct term1  {
    var termId:ObjectIdentifier
    var term1String:String
}

struct definition1 {
    var definitionId:ObjectIdentifier
    var definitionString:String
}


struct pairs {
    var term2:term1
    var definition2:definition1
}

struct set1: Identifiable {
    var id: ObjectIdentifier
    var pairs:[pairs]
    var desription:String
}
