import 'package:backup_ticket/helper/auth_helper.dart';
import 'package:backup_ticket/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Get current user
  User? get currentUser => _firebaseAuth.currentUser;

  // Auth state changes stream
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Send OTP to phone number for signup
  Future<void> signUpWithPhoneNumber({
    required String name,
    required String email,
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  }) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto verification completed - sign in the user
          UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
          await _saveNewUserData(userCredential.user!, name, email, phoneNumber);
          verificationCompleted(credential);
        },
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
        timeout: const Duration(seconds: 60),
      );
    } catch (e) {
      throw Exception('Phone authentication failed: ${e.toString()}');
    }
  }

  // Verify OTP for signup
  Future<UserCredential?> verifyOTPForSignUp({
    required String verificationId,
    required String smsCode,
    required String name,
    required String email,
    required String phoneNumber,
  }) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
      
      // Save user data for new signup
      await _saveNewUserData(userCredential.user!, name, email, phoneNumber);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('OTP verification failed: ${e.toString()}');
    }
  }

  // Sign in with phone number (for existing users)
  Future<void> signInWithPhoneNumber({
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  }) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
          await _fetchAndSaveUserData(userCredential.user!.uid);
          verificationCompleted(credential);
        },
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
        timeout: const Duration(seconds: 60),
      );
    } catch (e) {
      throw Exception('Phone authentication failed: ${e.toString()}');
    }
  }

  // Verify OTP for sign in (existing users)
  Future<UserCredential?> verifyOTPForSignIn({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
      
      // Fetch existing user data
      await _fetchAndSaveUserData(userCredential.user!.uid);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('OTP verification failed: ${e.toString()}');
    }
  }

  // Sign in with Google
  // Future<UserCredential?> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      
  //     if (googleUser == null) {
  //       return null; // User cancelled the sign-in
  //     }

  //     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);

  //     // Check if this is a new user
  //     if (userCredential.additionalUserInfo?.isNewUser == true) {
  //       // For Google sign-in, we have limited info, so save what we can
  //       await _saveNewUserData(
  //         userCredential.user!,
  //         userCredential.user!.displayName ?? '',
  //         userCredential.user!.email ?? '',
  //         '', // No phone number from Google sign-in
  //       );
  //     } else {
  //       // Existing user, fetch and save data locally
  //       await _fetchAndSaveUserData(userCredential.user!.uid);
  //     }

  //     return userCredential;
  //   } catch (e) {
  //     throw Exception('Google sign-in failed: ${e.toString()}');
  //   }
  // }

  // Check if phone number is already registered
  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    try {
      QuerySnapshot query = await _firestore
          .collection('users')
          .where('mobileNumber', isEqualTo: phoneNumber)
          .get();
      
      return query.docs.isNotEmpty;
    } catch (e) {
      throw Exception('Failed to check phone number: ${e.toString()}');
    }
  }

  // Check if email is already registered
  Future<bool> isEmailRegistered(String email) async {
    try {
      QuerySnapshot query = await _firestore
          .collection('users')
          .where('email', isEqualTo: email)
          .get();
      
      return query.docs.isNotEmpty;
    } catch (e) {
      throw Exception('Failed to check email: ${e.toString()}');
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      // await _googleSignIn.signOut();
      await _firebaseAuth.signOut();
      await UserPreferences.clearUser();
    } catch (e) {
      throw Exception('Sign out failed: ${e.toString()}');
    }
  }

  // Update user profile
  Future<void> updateUserProfile({
    required String name,
    required String email,
    required String mobileNumber,
  }) async {
    try {
      User? user = _firebaseAuth.currentUser;
      if (user != null) {
        // Update display name
        await user.updateDisplayName(name);

        // Create updated user model
        UserModel userModel = UserModel(
          id: user.uid,
          name: name,
          email: email,
          mobileNumber: mobileNumber,
        );

        // Update in Firestore
        await _saveUserToFirestore(userModel);

        // Update local preferences
        await UserPreferences.saveUser(
          userId: userModel.id,
          name: userModel.name,
          mobileNumber: userModel.mobileNumber,
          email: userModel.email,
        );
      }
    } catch (e) {
      throw Exception('Profile update failed: ${e.toString()}');
    }
  }

  // Get user data from Firestore
  Future<UserModel?> getUserData(String userId) async {
    try {
      DocumentSnapshot doc = await _firestore.collection('users').doc(userId).get();
      if (doc.exists) {
        return UserModel.fromJson(doc.data() as Map<String, dynamic>);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to fetch user data: ${e.toString()}');
    }
  }

  // Delete user account
  Future<void> deleteAccount() async {
    try {
      User? user = _firebaseAuth.currentUser;
      if (user != null) {
        // Delete user document from Firestore
        await _firestore.collection('users').doc(user.uid).delete();
        
        // Delete user from Firebase Auth
        await user.delete();
        
        // Clear local preferences
        await UserPreferences.clearUser();
      }
    } catch (e) {
      throw Exception('Account deletion failed: ${e.toString()}');
    }
  }

  // Check if user is logged in
  bool isLoggedIn() {
    return _firebaseAuth.currentUser != null;
  }

  // Get current user data from local storage
  Future<UserModel?> getCurrentUserData() async {
    String? userId = await UserPreferences.getUserId();
    String? name = await UserPreferences.getName();
    String? email = await UserPreferences.getEmail();
    String? mobileNumber = await UserPreferences.getMobileNumber();

    if (userId != null && name != null) {
      return UserModel(
        id: userId,
        name: name,
        email: email ?? '',
        mobileNumber: mobileNumber ?? '',
      );
    }
    return null;
  }

  // Private helper methods

  // Save new user data (for signup)
  Future<void> _saveNewUserData(User user, String name, String email, String phoneNumber) async {
    UserModel userModel = UserModel(
      id: user.uid,
      name: name,
      email: email,
      mobileNumber: phoneNumber,
    );

    // Save to Firestore
    await _saveUserToFirestore(userModel);

    // Save to local preferences
    await UserPreferences.saveUser(
      userId: userModel.id,
      name: userModel.name,
      mobileNumber: userModel.mobileNumber,
      email: userModel.email,
    );
  }

  // Save user data to Firestore
  // Future<void> _saveUserToFirestore(UserModel userModel) async {
  //   await _firestore.collection('users').doc(userModel.id).set(userModel.toJson());
  // }
Future<void> _saveUserToFirestore(UserModel userModel) async {
  try {
    await _firestore.collection('users').doc(userModel.id).set(userModel.toJson());
  } catch (e) {
    // If Firestore fails, only save locally for development
    print('Firestore error: $e');
    // Don't rethrow the error to allow local-only operation
  }
}
  // Fetch user data from Firestore and save locally
  Future<void> _fetchAndSaveUserData(String userId) async {
    UserModel? userModel = await getUserData(userId);
    if (userModel != null) {
      await UserPreferences.saveUser(
        userId: userModel.id,
        name: userModel.name,
        mobileNumber: userModel.mobileNumber,
        email: userModel.email,
      );
    }
  }

  // Handle Firebase Auth exceptions
  String _handleAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-phone-number':
        return 'The phone number format is invalid.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'invalid-verification-code':
        return 'The verification code entered is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid.';
      case 'quota-exceeded':
        return 'SMS quota exceeded. Please try again later.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'operation-not-allowed':
        return 'Phone authentication is not enabled.';
      case 'credential-already-in-use':
        return 'This phone number is already associated with another account.';
      default:
        return e.message ?? 'An authentication error occurred.';
    }
  }
}