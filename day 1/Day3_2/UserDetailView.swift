struct UserDetailView: View {
    var user: User

    var body: some View {
        VStack {
            Image(systemName: user.avatar)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            Text(user.name).font(.largeTitle)
            Text(user.address).font(.title3)
            Text(user.mobile).font(.title3)
            Spacer()
        }
        .padding()
        .navigationTitle("User Details")
    }
}
