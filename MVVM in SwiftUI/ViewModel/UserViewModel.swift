import Foundation


// MARK: ViewModel layer (Mantık ve Veri Yönetimi)
class UserViewModel: ObservableObject {
    @Published var user: User?
    
    func fetchUser()  {
        self.user = User(name: "Ahmet", age: 29)
    }
}
