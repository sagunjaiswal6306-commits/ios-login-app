class LoginViewModel {
    
    private let authService = AuthService()
    
    func login(email: String, password: String, completion: @escaping (String) -> Void) {
        
        // Validation
        if !Validator.isValidEmail(email) {
            completion("Invalid Email")
            return
        }
        
        if !Validator.isValidPassword(password) {
            completion("Password must be at least 6 characters")
            return
        }
        
        let user = User(email: email, password: password)
        
        authService.login(user: user) { success in
            if success {
                completion("Login Successful")
            } else {
                completion("Invalid Credentials ")
            }
        }
    }
}