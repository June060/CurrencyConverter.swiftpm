import SwiftUI

struct setCreator: View {
    @State var term1:String = ""
    @State var definition1:String = ""
    @State var pair:[pairs] = []
    var body: some View {
        VStack{
            Group{
                TextField("Enter your term", text: $term1)
                TextField("Enter the definition for your term",text: $definition1)
            }
            .textFieldStyle(.roundedBorder)
            .padding()
            .onSubmit {
                pair.append(pairs(term2: term1, definition2: definition1))

                if let data = try? PropertyListEncoder().encode(pair) {
                        UserDefaults.standard.set(data, forKey: "pair")
                    }
                
            }
            Button(action: {
                
                pair.append(pairs(term2: term1, definition2: definition1))
                if let data = try? PropertyListEncoder().encode(pair) {
                        UserDefaults.standard.set(data, forKey: "pair")
                    }

            }, label: {
                Image(systemName: "plus.circle")
            })
            
        }
    }
}
