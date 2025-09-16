// // import 'package:backup_ticket/views/auth/otp_screen.dart';
// // import 'package:backup_ticket/views/navbar/navbar_screen.dart';
// // import 'package:flutter/material.dart';

// // class SignupScreen extends StatelessWidget {
// //   const SignupScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Image.asset('assets/logintopimage.png'),
// //             // Curved blue header

// //             // Content area
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 24),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   const SizedBox(height: 40),

// //                   // Welcome text
// //                   const Text(
// //                     'Enter Your Details',
// //                     style: TextStyle(
// //                       fontSize: 28,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   const Text(
// //                     'One step closer to great details on ticket',
// //                     style: TextStyle(fontSize: 16, color: Colors.black),
// //                   ),

// //                   const SizedBox(height: 50),

// //                   // Login section
// //                   const Text(
// //                     'SignUp',
// //                     style: TextStyle(
// //                       fontSize: 24,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black,
// //                     ),
// //                   ),

// //                   const SizedBox(height: 30),

// //                   // Mobile number input
// //                   const Text(
// //                     'Name',
// //                     style: TextStyle(
// //                       fontSize: 14,
// //                       fontWeight: FontWeight.w500,
// //                       color: Colors.black87,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey.shade300),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     child: TextField(
// //                       decoration: InputDecoration(
// //                         hintText: 'Enter your name',
// //                         hintStyle: TextStyle(
// //                           color: Colors.grey.shade500,
// //                           fontSize: 16,
// //                         ),
// //                         prefixIcon: Icon(
// //                           Icons.person,
// //                           color: Colors.grey.shade500,
// //                         ),
// //                         border: InputBorder.none,
// //                         contentPadding: const EdgeInsets.symmetric(
// //                           horizontal: 16,
// //                           vertical: 16,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(height: 15,),

// //                   const Text(
// //                     'Mobile Number',
// //                     style: TextStyle(
// //                       fontSize: 14,
// //                       fontWeight: FontWeight.w500,
// //                       color: Colors.black87,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey.shade300),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     child: TextField(
// //                       decoration: InputDecoration(
// //                         hintText: 'Enter your Mobile Number',
// //                         hintStyle: TextStyle(
// //                           color: Colors.grey.shade500,
// //                           fontSize: 16,
// //                         ),
// //                         prefixIcon: Icon(
// //                           Icons.phone,
// //                           color: Colors.grey.shade500,
// //                         ),
// //                         border: InputBorder.none,
// //                         contentPadding: const EdgeInsets.symmetric(
// //                           horizontal: 16,
// //                           vertical: 16,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
                    
// //                     SizedBox(height: 15,),
// //                   const Text(
// //                     'E-mail',
// //                     style: TextStyle(
// //                       fontSize: 14,
// //                       fontWeight: FontWeight.w500,
// //                       color: Colors.black87,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey.shade300),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     child: TextField(
// //                       decoration: InputDecoration(
// //                         hintText: 'Enter your Email Address',
// //                         hintStyle: TextStyle(
// //                           color: Colors.grey.shade500,
// //                           fontSize: 16,
// //                         ),
// //                         prefixIcon: Icon(
// //                           Icons.email,
// //                           color: Colors.grey.shade500,
// //                         ),
// //                         border: InputBorder.none,
// //                         contentPadding: const EdgeInsets.symmetric(
// //                           horizontal: 16,
// //                           vertical: 16,
// //                         ),
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 30),

// //                   // Login button
// //                   SizedBox(
// //                     width: double.infinity,
// //                     height: 56,
// //                     child: ElevatedButton(
// //                       onPressed: () {
// //                         Navigator.push(context, MaterialPageRoute(builder: (context)=>NavbarScreen()));
// //                       },
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: const Color(0xFF4A6CF7),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                         elevation: 0,
// //                       ),
// //                       child: const Text(
// //                         'Let,s Go',
// //                         style: TextStyle(
// //                           fontSize: 16,
// //                           fontWeight: FontWeight.w600,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 30),

// //                   // Or divider
// //                   Row(
// //                     children: [
// //                       Expanded(
// //                         child: Container(
// //                           height: 1,
// //                           color: Colors.grey.shade300,
// //                         ),
// //                       ),
// //                       const Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: 16),
// //                         child: Text(
// //                           'Or',
// //                           style: TextStyle(color: Colors.grey, fontSize: 14),
// //                         ),
// //                       ),
// //                       Expanded(
// //                         child: Container(
// //                           height: 1,
// //                           color: Colors.grey.shade300,
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   const SizedBox(height: 30),

// //                   // Social login buttons
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       // Google
// //                       Image.asset('assets/gogle.png'),

// //                       const SizedBox(width: 16),

// //                       // Facebook
// //                       Image.asset('assets/facebook.png'),

// //                       const SizedBox(width: 16),

// //                       Image.asset('assets/twitter.png'),
// //                     ],
// //                   ),

// //                   // const SizedBox(height: 40),
// //                 ],
// //               ),
// //             ),

// //             Image.asset('assets/loginbottom.png'),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

















// import 'package:backup_ticket/helper/auth_helper.dart';
// import 'package:backup_ticket/provider/auth/auth_provider.dart';
// import 'package:backup_ticket/views/auth/login_screen.dart';
// import 'package:backup_ticket/views/navbar/navbar_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _emailController = TextEditingController();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _phoneController.dispose();
//     _emailController.dispose();
//     super.dispose();
//   }

//   void _handleSignup() async {
//     if (_formKey.currentState!.validate()) {
//       final authProvider = Provider.of<AuthProvider>(context, listen: false);
      
//       // Add country code if not present
//       String phoneNumber = _phoneController.text.trim();
//       if (!phoneNumber.startsWith('+')) {
//         phoneNumber = '+91$phoneNumber'; // Default to India country code
//       }

//       try {
//         await authProvider.signUpWithPhoneNumber(
//           name: _nameController.text.trim(),
//           email: _emailController.text.trim(),
//           phoneNumber: phoneNumber,
//         );

//         if (mounted) {


//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => LoginScreen(
         
//               ),
//             ),
//           );
//           // Navigate to OTP screen if code is sent successfully
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(
//           //     builder: (context) => OTPScreen(
//           //       phoneNumber: phoneNumber,
//           //       isSignup: true,
//           //     ),
//           //   ),
//           // );
//         }
//       } catch (e) {
//         // Handle billing error specifically
//         if (e.toString().toLowerCase().contains('billing')) {
//           _showBillingErrorDialog();
//         }
//         // Other errors are handled by the provider
//       }
//     }
//   }

//   void _showBillingErrorDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Phone Authentication Unavailable'),
//           content: const Text(
//             'Phone authentication requires billing to be enabled on your Firebase project. '
//             'For now, you can continue with email-only signup or enable billing in your Firebase console.',
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _handleTemporarySignup();
//               },
//               child: const Text('Continue Without Phone'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   // void _handleTemporarySignup() {
//   //   // For development purposes, you can navigate directly
//   //   // In production, you should implement proper email authentication
//   //   showDialog(
//   //     context: context,
//   //     builder: (BuildContext context) {
//   //       return AlertDialog(
//   //         title: const Text('Development Mode'),
//   //         content: const Text(
//   //           'This is a temporary workaround for development. '
//   //           'In production, please enable billing for phone authentication.',
//   //         ),
//   //         actions: [
//   //           TextButton(
//   //             onPressed: () {
//   //               Navigator.of(context).pop();
//   //               Navigator.push(
//   //                 context, 
//   //                 MaterialPageRoute(builder: (context) => const NavbarScreen()),
//   //               );
//   //             },
//   //             child: const Text('Continue to App'),
//   //           ),
//   //         ],
//   //       );
//   //     },
//   //   );
//   // }


//   void _handleTemporarySignup() {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text('Development Mode'),
//         content: const Text(
//           'This bypasses phone authentication for development purposes only. '
//           'Please enable billing for production use.',
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () async {
//               Navigator.of(context).pop();
              
//               // Save user data locally
//               await UserPreferences.saveUser(
//                 userId: 'dev_${DateTime.now().millisecondsSinceEpoch}',
//                 name: _nameController.text.trim(),
//                 email: _emailController.text.trim(),
//                 mobileNumber: _phoneController.text.trim(),
//               );
              
//               Navigator.pushReplacement(
//                 context, 
//                 MaterialPageRoute(builder: (context) => const LoginScreen()),
//               );
//             },
//             child: const Text('Continue'),
//           ),
//         ],
//       );
//     },
//   );
// }

//   String? _validateName(String? value) {
//     if (value == null || value.trim().isEmpty) {
//       return 'Please enter your name';
//     }
//     if (value.trim().length < 2) {
//       return 'Name must be at least 2 characters';
//     }
//     return null;
//   }

//   String? _validatePhone(String? value) {
//     if (value == null || value.trim().isEmpty) {
//       return 'Please enter your mobile number';
//     }
//     if (value.trim().length != 10) {
//       return 'Please enter a valid 10-digit mobile number';
//     }
//     if (!RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
//       return 'Mobile number should contain only digits';
//     }
//     return null;
//   }

//   String? _validateEmail(String? value) {
//     if (value == null || value.trim().isEmpty) {
//       return 'Please enter your email address';
//     }
//     if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value.trim())) {
//       return 'Please enter a valid email address';
//     }
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Consumer<AuthProvider>(
//         builder: (context, authProvider, child) {
//           return SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   Image.asset('assets/logintopimage.png'),

//                   // Content area
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 24),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(height: 40),

//                         // Welcome text
//                         const Text(
//                           'Enter Your Details',
//                           style: TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         const Text(
//                           'One step closer to great details on ticket',
//                           style: TextStyle(fontSize: 16, color: Colors.black),
//                         ),

//                         const SizedBox(height: 50),

//                         // SignUp section
//                         const Text(
//                           'SignUp',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),

//                         const SizedBox(height: 30),

//                         // Show error message if any
//                         if (authProvider.errorMessage != null) ...[
//                           Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.all(12),
//                             decoration: BoxDecoration(
//                               color: Colors.red.shade50,
//                               border: Border.all(color: Colors.red.shade200),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Text(
//                               authProvider.errorMessage!,
//                               style: TextStyle(
//                                 color: Colors.red.shade700,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                         ],

//                         // Name input
//                         const Text(
//                           'Name',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey.shade300),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: TextFormField(
//                             controller: _nameController,
//                             validator: _validateName,
//                             decoration: InputDecoration(
//                               hintText: 'Enter your name',
//                               hintStyle: TextStyle(
//                                 color: Colors.grey.shade500,
//                                 fontSize: 16,
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.person,
//                                 color: Colors.grey.shade500,
//                               ),
//                               border: InputBorder.none,
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                                 vertical: 16,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 15),

//                         // Mobile number input
//                         const Text(
//                           'Mobile Number',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey.shade300),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: TextFormField(
//                             controller: _phoneController,
//                             validator: _validatePhone,
//                             keyboardType: TextInputType.phone,
//                             decoration: InputDecoration(
//                               hintText: 'Enter your Mobile Number',
//                               hintStyle: TextStyle(
//                                 color: Colors.grey.shade500,
//                                 fontSize: 16,
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.phone,
//                                 color: Colors.grey.shade500,
//                               ),
//                               border: InputBorder.none,
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                                 vertical: 16,
//                               ),
//                             ),
//                           ),
//                         ),

//                         const SizedBox(height: 15),

//                         // Email input
//                         const Text(
//                           'E-mail',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey.shade300),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: TextFormField(
//                             controller: _emailController,
//                             validator: _validateEmail,
//                             keyboardType: TextInputType.emailAddress,
//                             decoration: InputDecoration(
//                               hintText: 'Enter your Email Address',
//                               hintStyle: TextStyle(
//                                 color: Colors.grey.shade500,
//                                 fontSize: 16,
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: Colors.grey.shade500,
//                               ),
//                               border: InputBorder.none,
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                                 vertical: 16,
//                               ),
//                             ),
//                           ),
//                         ),

//                         const SizedBox(height: 30),

//                         // Signup button
//                         SizedBox(
//                           width: double.infinity,
//                           height: 56,
//                           child: ElevatedButton(
//                             onPressed: authProvider.isLoading ? null : _handleSignup,
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: const Color(0xFF4A6CF7),
//                               disabledBackgroundColor: Colors.grey.shade400,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               elevation: 0,
//                             ),
//                             child: authProvider.isLoading
//                                 ? const SizedBox(
//                                     height: 20,
//                                     width: 20,
//                                     child: CircularProgressIndicator(
//                                       color: Colors.white,
//                                       strokeWidth: 2,
//                                     ),
//                                   )
//                                 : const Text(
//                                     'Let\'s Go',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                           ),
//                         ),

//                         const SizedBox(height: 30),

//                         // Or divider
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 height: 1,
//                                 color: Colors.grey.shade300,
//                               ),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 16),
//                               child: Text(
//                                 'Or',
//                                 style: TextStyle(color: Colors.grey, fontSize: 14),
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 height: 1,
//                                 color: Colors.grey.shade300,
//                               ),
//                             ),
//                           ],
//                         ),

//                         const SizedBox(height: 30),

//                         // Social login buttons
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             // Google
//                             GestureDetector(
//                               onTap: () {
//                                 // TODO: Implement Google sign in
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                     content: Text('Google sign-in coming soon!'),
//                                   ),
//                                 );
//                               },
//                               child: Image.asset('assets/gogle.png'),
//                             ),

//                             const SizedBox(width: 16),

//                             // Facebook
//                             GestureDetector(
//                               onTap: () {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                     content: Text('Facebook sign-in coming soon!'),
//                                   ),
//                                 );
//                               },
//                               child: Image.asset('assets/facebook.png'),
//                             ),

//                             const SizedBox(width: 16),

//                             // Twitter
//                             GestureDetector(
//                               onTap: () {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                     content: Text('Twitter sign-in coming soon!'),
//                                   ),
//                                 );
//                               },
//                               child: Image.asset('assets/twitter.png'),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),

//                   Image.asset('assets/loginbottom.png'),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }














import 'package:backup_ticket/provider/auth/auth_provider.dart';
import 'package:backup_ticket/views/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _handleSignup() async {
    if (_formKey.currentState!.validate()) {
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      
      // Add country code if not present
      String phoneNumber = _phoneController.text.trim();
      if (!phoneNumber.startsWith('+')) {
        phoneNumber = '+91$phoneNumber'; // Default to India country code
      }

      try {
        // Save user data directly without OTP verification
        await authProvider.saveUserWithoutAuth(
          name: _nameController.text.trim(),
          email: _emailController.text.trim(),
          phoneNumber: phoneNumber,
        );

        if (mounted) {
          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Account created successfully!'),
              backgroundColor: Colors.green,
            ),
          );

          // Navigate to login screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.toString()),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your name';
    }
    if (value.trim().length < 2) {
      return 'Name must be at least 2 characters';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your mobile number';
    }
    if (value.trim().length != 10) {
      return 'Please enter a valid 10-digit mobile number';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value.trim())) {
      return 'Mobile number should contain only digits';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value.trim())) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset('assets/logintopimage.png'),

                  // Content area
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),

                        // Welcome text
                        const Text(
                          'Enter Your Details',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'One step closer to great details on ticket',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),

                        const SizedBox(height: 50),

                        // SignUp section
                        const Text(
                          'SignUp',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Show error message if any
                        if (authProvider.errorMessage != null) ...[
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              border: Border.all(color: Colors.red.shade200),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              authProvider.errorMessage!,
                              style: TextStyle(
                                color: Colors.red.shade700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],

                        // Name input
                        const Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            validator: _validateName,
                            decoration: InputDecoration(
                              hintText: 'Enter your name',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16,
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey.shade500,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Mobile number input
                        const Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            controller: _phoneController,
                            validator: _validatePhone,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Enter your Mobile Number',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16,
                              ),
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.grey.shade500,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Email input
                        const Text(
                          'E-mail',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            controller: _emailController,
                            validator: _validateEmail,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Enter your Email Address',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16,
                              ),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey.shade500,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Signup button
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: authProvider.isLoading ? null : _handleSignup,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4A6CF7),
                              disabledBackgroundColor: Colors.grey.shade400,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: authProvider.isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text(
                                    'Let\'s Go',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // Or divider
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Or',
                                style: TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        // Social login buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Google
                            GestureDetector(
                              onTap: () {
                                // TODO: Implement Google sign in
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Google sign-in coming soon!'),
                                  ),
                                );
                              },
                              child: Image.asset('assets/gogle.png'),
                            ),

                            const SizedBox(width: 16),

                            // Facebook
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Facebook sign-in coming soon!'),
                                  ),
                                );
                              },
                              child: Image.asset('assets/facebook.png'),
                            ),

                            const SizedBox(width: 16),

                            // Twitter
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Twitter sign-in coming soon!'),
                                  ),
                                );
                              },
                              child: Image.asset('assets/twitter.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Image.asset('assets/loginbottom.png'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}