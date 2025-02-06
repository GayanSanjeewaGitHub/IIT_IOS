import SwiftUI

struct ContentView: View {
    @State var size: Double = 16
    @State var displaySheet = false
    @State var theme: Color =  .red

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                Text("Property Wrappers")
                    .font(.title)
                    .fontWeight(.bold)

                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: CGFloat(size)))

                Button("Click here!") {
                    displaySheet.toggle()
                }
                .buttonStyle(.bordered)
                .tint(theme)
                .padding()
                .sheet(isPresented: $displaySheet) {
                    SettingsView(size: $size)
                }
            }
        }
    }
}