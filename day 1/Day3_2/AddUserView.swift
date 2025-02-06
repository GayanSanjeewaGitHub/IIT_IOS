struct AddUserView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: UserViewModel

    @State private var name = ""
    @State private var address = ""
    @State private var mobile = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Address", text: $address)
                TextField("Mobile", text: $mobile)
            }
            .navigationTitle("Add User")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let newUser = User(avatar: "person.circle", name: name, address: address, mobile: mobile)
                        viewModel.addUser(user: newUser)
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}
