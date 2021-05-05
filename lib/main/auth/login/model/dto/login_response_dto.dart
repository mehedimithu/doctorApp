
import '../../../../../common/user/logged_user.dart';

class LoginResponseDto {
  String msg;
  LoggedUser loggedUser;

  LoginResponseDto({this.msg, this.loggedUser});

  LoginResponseDto.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    loggedUser = json['data'] != null ? new LoggedUser.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    if (this.loggedUser != null) {
      data['data'] = this.loggedUser.toJson();
    }
    return data;
  }
}


