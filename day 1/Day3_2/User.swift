import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var avatar: String  // SF Symbols
    var name: String
    var address: String
    var mobile: String
}