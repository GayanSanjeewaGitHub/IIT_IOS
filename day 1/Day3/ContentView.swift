import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.data, id: \.self) { item in
                    NavigationLink {
                        SecondView(selectedItem: item)
                    } label: {
                        HStack {
                            Image(systemName: "house.fill")
                            Text(item)
                        }
                    }
                }
            }
            .environmentObject(viewModel)
        }
    }
}

#Preview {
    ContentView()
}