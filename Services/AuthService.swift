class AuthService{
    func login(user: User, completion: @escaping - (Bool) -> Void{
        if user.email == "test@gmail.com0" && user.passord== "123456"{
            completion(true)
        } else {
            completion(false)
        }
    }
}