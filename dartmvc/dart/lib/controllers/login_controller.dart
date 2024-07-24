import '../models/user_model.dart';

class LoginController {
  User? _user;

  bool login(String username, String password){
    if  (username=='omer' && password=='omerbaba123') {
      _user = User(username: username, password:password);
      return true;
    }
    return false;
  }
  User? get user=> _user;
}