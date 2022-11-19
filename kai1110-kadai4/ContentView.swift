
import SwiftUI

struct ContentView: View {
    @State var countNumber = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(countNumber)")
                .font(.title)
            ButtonView(countNumber: $countNumber, text: "+1", checkAction: true)
            ButtonView(countNumber: $countNumber, text: "clear", checkAction: false)
        }
    }
}

struct ButtonView: View {
    @Binding var countNumber: Int
    let text: String
    let checkAction: Bool
    
    var body: some View {
        Button(action: {
            if checkAction {
                countNumber += 1
            }
            else {
                countNumber = 0
            }
        }) {
            Text(text)
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
