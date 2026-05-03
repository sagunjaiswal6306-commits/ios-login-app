class LoginView {
    
    private let viewModel = LoginViewModel()
    
    func loginUser() {
        
        let email = "test@gmail.com"
        let password = "123456"
        
        viewModel.login(email: email, password: password)
    }
}