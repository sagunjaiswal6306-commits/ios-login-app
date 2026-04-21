class AuthService{
   func login(user: User, completion: @escaping (Bool) -> Void) {
    
    print("Logging in... ")
    
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        let success = (user.email == "test@gmail.com" && user.password == "123456")
        completion(success)
    }
}
}