class LoginViewModel {
    
    private let authService = AuthService()
    
    var errorMessage: String?
    var isLoading = false
    
    func login(email: String, password: String) {
        
        if !Validator.isValidEmail(email) {
            errorMessage = "Invalid Email Format"
            print(errorMessage!)
            return
        }
        
        if !Validator.isValidPassword(password) {
            errorMessage = "Password must be 6+ characters with at least 1 number"
            print(errorMessage!)
            return
        }
        
        isLoading = true
        print("Logging in...")
        
        authService.login(user: User(email: email, password: password)) { success in
            
            self.isLoading = false
            
            if success {
                print("Login Successful ✅")
            } else {
                self.errorMessage = "Invalid Credentials"
                print(self.errorMessage!)
            }
        }
    }
}