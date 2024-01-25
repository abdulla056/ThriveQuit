import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/auth/forgotten_password_screen.dart';
import 'package:thrive_quit_application/core/app_export.dart';
import 'package:thrive_quit_application/presentation/credentials_page_one_screen/credentials_page_one_screen.dart';
import 'package:thrive_quit_application/state_management/home_page_with_navigation.dart';

//import 'home.dart';

class AuthGate extends StatefulWidget {
  AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {

    final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
    //late Widget _resultWidget;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData.light(),
      child: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
                return SignInScreen(
                  actions: [ForgotPasswordAction((context, email) {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => ForgottenPasswordPage(),
            ),
          );
                   })],
             providers: [
                EmailAuthProvider(),
                GoogleProvider(clientId: "900485707843-r5ggqockbqbcf6j13vsga55grkuik0oe.apps.googleusercontent.com")
             ],
             headerBuilder: (context, constraints, shrinkOffset) {
               return Padding(
                 padding: const EdgeInsets.all(20),
                 child: AspectRatio(
                   aspectRatio: 1,
                   child: CustomImageView(
                    imagePath: ImageConstant.logoImage,
                    height: 30.v,
                    width: 30.h,),
                 ),
               );
             },
             subtitleBuilder: (context, action) {
               return Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: action == AuthAction.signIn
                     ? const Text('Welcome to ThriveQuit, please sign in!',)
                     : const Text('Welcome to ThriveQuit, please sign up!'),
               );
             },
                footerBuilder: (context, action) {
               return const Padding(
                 padding: EdgeInsets.only(top: 16),
                 child: Text(
                   'By signing in, you agree to our terms and conditions.',
                   style: TextStyle(color: Colors.grey),
                 ),
               );
             },
           );
         }
        // User is authenticated, check credentials completion
        if (snapshot.hasError) {
          // Handle error case
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show loading indicator while checking credentials completion
          return CircularProgressIndicator();
        }

        // User is authenticated and data is available
        return FutureBuilder<Widget>(
          future: checkCredentialsCompletion(),
          builder: (context, credentialsSnapshot) {
            if (credentialsSnapshot.connectionState == ConnectionState.waiting) {
              // Show loading indicator while waiting for credentials completion
              return CircularProgressIndicator();
            }

            if (credentialsSnapshot.hasError) {
              // Handle error case from checkCredentialsCompletion
              return Center(
                child: Text('Error: ${credentialsSnapshot.error}'),
              );
            }

            // Return the widget from checkCredentialsCompletion
            return credentialsSnapshot.data ?? Container(); // Use Container() as a default if data is null
          },
        );
        }
      ),
    );
  }
    Future<Widget> checkCredentialsCompletion() async{

    QuerySnapshot querySnapshot = await usersCollection.where(
    'userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();

    if (querySnapshot.docs.isNotEmpty) 
    {
      DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
       if (documentSnapshot.exists)
        {
          if (documentSnapshot.data().toString().contains('gender'))
          {
            return HomePage();
          }
          else return CredentialsPageOneScreen();
        }
    }
      return CredentialsPageOneScreen();
  }
}