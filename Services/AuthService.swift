class AuthService {
    
    func login(user: User, completion: @escaping (Bool) -> Void) {
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            
            let isValid = (user.email == "test@gmail.com" && user.password == "123456")
            
            completion(isValid)
        }
    }
}