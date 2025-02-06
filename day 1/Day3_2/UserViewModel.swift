class UserViewModel: ObservableObject {
    @Published var users: [User] = [
        User(avatar: "person.circle", name: "John Doe", address: "123 Apple St", mobile: "123-456-7890"),
        User(avatar: "person.circle", name: "Jane Smith", address: "456 Swift Rd", mobile: "987-654-3210")
    ]
    
    func addUser(user: User) {
        users.append(user)
    }
    
    func deleteUser(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}
