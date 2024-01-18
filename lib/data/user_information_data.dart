// data.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserInformation {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String firstName;
  String lastName;
  String userName;
  String contactNumber;
  String dateOfBirth;

  UserInformation({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.contactNumber,
    required this.dateOfBirth,
  });

  Future<void> storeData() async {
    await _firestore.collection('users').add({
      'userId' : FirebaseAuth.instance.currentUser!.uid,
      'firstName': firstName,
      'lastName': lastName,
      'userName' : userName,
      'contactNumber' : contactNumber,
      'dateOfBirth' : dateOfBirth,
    });
  }
}

class HealthInformation {
  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

  String gender;
  double height;
  double weight;

  HealthInformation({
    required this.gender,
    required this.height,
    required this.weight,
  });

    // Function to update or add values to the document based on user ID
    Future<void> updateHealth() async {
      // Query the collection based on the user ID
      QuerySnapshot querySnapshot = await usersCollection.where(
        'userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;

      await documentSnapshot.reference.update({
        'gender': gender,
        'height' : height,
        'weight' : weight,    
      });
    }  

}

class SmokingInformation {
  final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

  String cigarettesSmokedPerDay;
  String cigarettesInOnePack;
  String cigarettesAverageCost;
  String dateOfLastCigarette;

    SmokingInformation({
    required this.cigarettesSmokedPerDay,
    required this.cigarettesInOnePack,
    required this.cigarettesAverageCost,
    required this.dateOfLastCigarette,
  });

    // Function to update or add values to the document based on user ID
    Future<void> updateSmoking() async {
      // Query the collection based on the user ID
      QuerySnapshot querySnapshot = await usersCollection.where(
        'userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;


      await documentSnapshot.reference.update({
        'cigarettesSmokedPerDay': cigarettesSmokedPerDay,
        'cigarettesInOnePack' : cigarettesInOnePack,
        'cigarettesAverageCost' : cigarettesAverageCost,
        'dateOfLastCigarette' : dateOfLastCigarette,
      });
    }
}