import SwiftUI

struct SecondView: View {
    var selectedItem: String

    var body: some View {
        NavigationStack {
            VStack {
                Text(selectedItem)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                NavigationLink {
                    ThirdView()
                } label: {
                    Text("Tap ME!")
                }
            }
        }
    }
}

#Preview {
    SecondView(selectedItem: "Hello World")
}