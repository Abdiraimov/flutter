import 'package:lesson9_for_loop/model.dart';

final students = <Student>[Daniyar, Dinara, Khanzada, Begaly];
void main() {
  controllNameEmail('Dinara', 'example@gmail.com');
}

void controllNameEmail (String name, String email){
for (final student in students){
  if(name == student.name && email == student.email){
    print('Welcome: ${student.name}');
    break;
  }
  else {
    print('Your name or email is not correct');
  }
}
}