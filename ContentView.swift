import SwiftUI

struct ContentView: View {
    @State var int1 = 9
    @State var int2 = 2
    var body: some View {
        VStack {
            TextField("Enter a Number 1", value: $int1, format: .number)
                
            TextField("Enter a Number 2", value: $int2, format: .number)
        }
    }
    func convertCurrency(number1: Int) -> Int {
        @State var int3:Int
        int1 * 1.4235 = int3
    }
}

