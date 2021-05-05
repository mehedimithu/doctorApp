class LoggedUser{
  String id;
  String name;
  String email;
  String status;
  String points;

  LoggedUser({this.id, this.name, this.email, this.status, this.points});

  LoggedUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    status = json['status'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['status'] = this.status;
    data['points'] = this.points;
    return data;
  }
}