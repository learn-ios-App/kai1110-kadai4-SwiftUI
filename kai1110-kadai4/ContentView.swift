
import SwiftUI

struct ContentView: View {
    @State var countNumber = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(countNumber)")

            Button("+1") {
                countNumber += 1
            }

            Button("clear") {
                countNumber = 0
            }
        }
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
