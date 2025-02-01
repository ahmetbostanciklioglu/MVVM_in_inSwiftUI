import SwiftUI


// MARK: View layer (Görüntü bulunuyor)

struct ContentView: View {
    
    @StateObject private var viewModel = UserViewModel()
    var body: some View {
        VStack {
            if let user = viewModel.user {
                Text("Name: \(user.name)")
                Text("Age: \(user.age)")
            } else {
                ProgressView()
                    
            }
        }
        .font(.title2)
        .fontWeight(.medium)
        .padding()
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ContentView()
}
