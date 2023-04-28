import SwiftUI

struct term1  {
    var termId:Int
    var term1String:String
}

struct definition1 {
    var definitionId:Int
    var definitionString:String
}


struct pairs {
    var term2:term1
    var definition2:definition1
}

struct set1 {
    var name:String
    var pairs:[pairs]
    var desription:String
    var setId:Int
}
