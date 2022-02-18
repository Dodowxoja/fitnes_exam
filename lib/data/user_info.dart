import 'package:fitnes/model/mode.dart';

class UsersInfo {
  static List<Model> users = [
    Model(
        fName: 'Admin_f',
        lName: 'Admin_l',
        email: 'admin@email.com',
        password: 'admin'),
    Model(fName: 'a', lName: 'a', email: 'a', password: 'a'),
  ];

  static Model? currentUser;
}
