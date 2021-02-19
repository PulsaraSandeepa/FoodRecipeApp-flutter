import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodrecipeapp/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //create user object based on firebase user
  RegUser _userFromFirebaseUser(User user) {
    return user != null ? RegUser(uid: user.uid) : null;
  }

//auth change user stream
  Stream<RegUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //register with email and password
  Future registerWithEmailAndPassword(String email, String password, String firstName, String lastName) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      CollectionReference users = firestore.collection('users');
      users.add({
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
      });
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //login with email and password
  Future loginWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}
