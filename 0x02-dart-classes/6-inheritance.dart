// 6-inheritance.dart
import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String _user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  })  : _user_password = user_password,
        super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }

  String get user_password => _user_password;

  set user_password(String password) {
    _user_password = password;
    super.password = password;
  }
}

void main() {
  final djo = User(
    id: 1,
    name: "Djo",
    age: 25,
    height: 1.89,
    user_password: "Azert23defde",
  );
  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());

  Map<String, dynamic> map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde",
  };
  final youssef = User.fromJson(map);
  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());
  print(youssef.toString());
  print('\n');
  print('<===========Test2===========>:');
  print('\n');
  djo.user_password = "holberton98";
  youssef.user_password = "AZERfghn6789";
  print(djo.toString());
  print(youssef.toString());
}
