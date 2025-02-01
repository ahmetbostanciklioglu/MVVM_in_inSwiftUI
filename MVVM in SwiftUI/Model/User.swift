import Foundation


// MARK: Model layer (Uygulama modeli bulunuyor)

struct User: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
}
