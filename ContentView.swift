import SwiftUI


struct ContentView: View {
    @State var picker:Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Study Buddy")
                NavigationLink {
                    TestView()
                } label: {
                    Text("Go to test view")
                        .frame(width: 70, height: 70)
                        .background(.mint)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 10), style: .continuous))
                        .padding()
                }
                Button(action: {
                    picker = true
                        
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
        }
        
    }
}
