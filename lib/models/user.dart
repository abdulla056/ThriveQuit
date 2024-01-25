// User model

class UserModel {
  //String email;
  String firstName;
  String lastName;
  String userName;
  String contactNumber;
  String dateOfBirth;
  String gender;
  double height;
  double weight;
  String cigarettesSmokedPerDay;
  String cigarettesInOnePack;
  String cigarettesAverageCost;
  String dateOfLastCigarette;

  UserModel({
    //required this.email,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.contactNumber,
    required this.dateOfBirth,
    required this.gender,
    required this.height,
    required this.weight,
    required this.cigarettesSmokedPerDay,
    required this.cigarettesInOnePack,
    required this.cigarettesAverageCost,
    required this.dateOfLastCigarette,
  });

  factory UserModel.empty() {
    return UserModel(
      firstName: "Boblet",
      lastName: 'Nice',
      userName: 'Bobby056',
      contactNumber: '123456',
      dateOfBirth: '2007-12-03',
      gender: 'male',
      height: 176,
      weight: 55,
      cigarettesSmokedPerDay: '23',
      cigarettesInOnePack: '332',
      cigarettesAverageCost: '20',
      dateOfLastCigarette: '2023-12-23',
    );
  }
}