import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:thrive_quit_application/models/user.dart';

Future<UserModel> getUserFromFirestore() async {
  try {
    // Reference to the 'users' collection in Firestore
    CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');

    QuerySnapshot querySnapshot = await usersCollection.where(
    'userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
    DocumentSnapshot documentSnapshot = querySnapshot.docs.first;

    // Retrieve the user document by ID
    DocumentSnapshot userSnapshot = await usersCollection.doc(documentSnapshot.id).get();

    // Check if the document exists
    if (userSnapshot.exists) {
      // Map Firestore data to the User model
      UserModel user = UserModel(
        //email: ;
        firstName: userSnapshot['firstName'],
        lastName: userSnapshot['lastName'],
        userName: userSnapshot['userName'],
        contactNumber: userSnapshot['contactNumber'],
        dateOfBirth: userSnapshot['dateOfBirth'],
        gender: userSnapshot['gender'],
        height: userSnapshot['height'],
        weight: userSnapshot['weight'],
        cigarettesSmokedPerDay: userSnapshot['cigarettesSmokedPerDay'],
        cigarettesInOnePack: userSnapshot['cigarettesInOnePack'],
        cigarettesAverageCost: userSnapshot['cigarettesAverageCost'],
        dateOfLastCigarette: userSnapshot['dateOfLastCigarette'],
      );

      return user;
    } 
    else {
      // Document does not exist
      return UserModel.empty();
    }
  } catch (e) {
    print('Error retrieving user from Firestore: $e');
    return UserModel.empty();
  }
}
