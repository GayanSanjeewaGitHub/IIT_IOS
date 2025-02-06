import Foundation
import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "baseball", "basketball"]
    @State var selected = "Archery" // compiler know now only
    var body: some View {
        VStack {
            Text("Why not Try..")
                .font(.largeTitle)
                .fontWeight(.bold)

            Circle()
                .fill(Color.blue)
                .overlay {
                    Image(systemName: "figure.\(selected.lowercased())") // need to put image in the asset >>Image ("name")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                }

            Text("\(selected)")
                .font(.title)

            Button("try again") {
                if let randomElement = activities.randomElement() {
                    selected = randomElement
                } else {
                    selected = "No items"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}