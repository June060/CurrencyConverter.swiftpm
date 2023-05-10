import SwiftUI

struct setCreator: View {
    @State var term1:String = ""
    @State var definition1:String = ""
    @State var pair:[pairs] = [pairs(term2: "", definition2: "")]
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

                UserDefaults.standard.set(pair, forKey: "pair")
                
                UserDefaults.standard.set(term1, forKey: "term")
                UserDefaults.standard.set(definition1, forKey: "definition")
                term1 = UserDefaults.standard.string(forKey: "term") ?? ""
                definition1 = UserDefaults.standard.string(forKey: "definition") ?? ""
            }
            Button(action: {
                
                pair.append(pairs(term2: term1, definition2: definition1))

                UserDefaults.standard.set(term1, forKey: "term")
                UserDefaults.standard.set(definition1, forKey: "definition")
                term1 = UserDefaults.standard.string(forKey: "term") ?? ""
                definition1 = UserDefaults.standard.string(forKey: "definition") ?? ""
                            }, label: {
                Image(systemName: "plus.circle")
            })
            
        }
    }
}
