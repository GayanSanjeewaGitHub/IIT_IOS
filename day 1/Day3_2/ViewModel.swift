struct UserListView: View {
    @StateObject var viewModel = UserViewModel()
    @State private var showAddUser = false

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.users) { user in
                    NavigationLink(destination: UserDetailView(user: user)) {
                        HStack {
                            Image(systemName: user.avatar)
                                .resizable()
                                .frame(width: 40, height: 40)
                            VStack(alignment: .leading) {
                                Text(user.name).font(.headline)
                                Text(user.mobile).font(.subheadline)
                            }
                        }
                    }
                }
                .onDelete(perform: viewModel.deleteUser)
            }
            .navigationTitle("Users")
            .toolbar {
                Button(action: { showAddUser = true }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showAddUser) {
                AddUserView(viewModel: viewModel)
            }
        }
    }
}
