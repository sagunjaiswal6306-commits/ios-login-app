class Validator{
    static func isValidEmail(_ email:String) -> Bool{
        return email.contains("@") && email.contains(".")
    }
    static func is validPassword(_ password: String) -> Bool{
        return pawword.count>= 6
    }
}