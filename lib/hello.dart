// void main() {
//   Map<String, dynamic> user = {
//     'name': "samit",
//     'age': 12,
//     'isAdmin': true,
//   };

//   for (var item in user.keys) {
//     print(user[item]);
//   }
// }

void main() {
  Map<String, dynamic> x = {'name': "samit", 'age': 12};

  for (var entry in x.entries) {
    print('${entry.key} : ${entry.value}');
  }
}
