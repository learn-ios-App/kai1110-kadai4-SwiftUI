
import SwiftUI

struct ContentView: View {
    @State private var countNumber = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(countNumber)")
                .font(.title)
            
            Button(action: {
                countNumber += 1
            }) {
                Text("+1")
                    .font(.title)
            }
            Button(action: {
                countNumber = 0
            }) {
                Text("Clear")
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
