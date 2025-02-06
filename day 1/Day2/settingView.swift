import SwiftUI

struct SettingsView: View {
    @Binding var size: Double
    @Binding var theme: Color

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(size)")
            Slider(value: $size, in: 16...24)
            ColorPicker("Theme", selection: $theme)
        }
        .padding()
    }
}

#Preview {
    SettingsView(size: .constant(16), theme: .constant(.red))
}