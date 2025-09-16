// // import 'package:flutter/material.dart';

// // class MyProfile extends StatelessWidget {
// //   const MyProfile({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         elevation: 0,
// //         leading: IconButton(
// //           icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
// //           onPressed: () {
// //             Navigator.of(context).pop();
// //           },
// //         ),
// //         centerTitle: true,
// //         title:  Text(
// //           'My Profile',
// //           style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
// //         ),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 16),
// //           child: Column(
// //             children: [
// //               const SizedBox(height: 20),
// //               Center(
// //                 child: Container(
// //                   width: 100,
// //                   height: 100,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(12), // Rounded corners for the square
// //                     image: const DecorationImage(
// //                       image: AssetImage('assets/profileimage.png'),
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               // Full Name
// //               TextFormField(
// //                 initialValue: 'PMS',
// //                 decoration: const InputDecoration(
// //                   labelText: 'Full Name',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //               // Phone Number
// //               TextFormField(
// //                 initialValue: '+6265165165',
// //                 decoration: const InputDecoration(
// //                   labelText: 'Phone Number',
// //                   border: OutlineInputBorder(),
// //                 ),
// //                 keyboardType: TextInputType.phone,
// //               ),
// //               const SizedBox(height: 16),
// //               // Email
// //               TextFormField(
// //                 initialValue: 'Manojkumar@gmail.com',
// //                 decoration: const InputDecoration(
// //                   labelText: 'Email',
// //                   border: OutlineInputBorder(),
// //                 ),
// //                 keyboardType: TextInputType.emailAddress,
// //               ),
// //               const SizedBox(height: 250),
// //               // Save Button
// //               SizedBox(
// //                 width: double.infinity,
// //                 height: 48,
// //                 child: ElevatedButton(
// //                   onPressed: () {},
// //                   style: ButtonStyle(
// //                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(8))),
// //                     padding:
// //                         MaterialStateProperty.all(const EdgeInsets.all(0)),
// //                     backgroundColor: MaterialStateProperty.all(Colors.transparent),
// //                     elevation: MaterialStateProperty.all(0),
// //                   ),
// //                   child: Ink(
// //                     decoration: BoxDecoration(
// //                       gradient: const LinearGradient(
// //                         colors: [Color(0xFF214194), Color(0xFF4C7EFF)],
// //                       ),
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Container(
// //                       alignment: Alignment.center,
// //                       child: const Text(
// //                         'Save',
// //                         style: TextStyle(fontSize: 16, color: Colors.white),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
















// import 'package:backup_ticket/helper/auth_helper.dart';
// import 'package:backup_ticket/provider/auth/user_profile_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';


// class MyProfile extends StatefulWidget {
//   const MyProfile({super.key});

//   @override
//   State<MyProfile> createState() => _MyProfileState();
// }

// class _MyProfileState extends State<MyProfile> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _emailController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _loadUserProfile();
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _phoneController.dispose();
//     _emailController.dispose();
//     super.dispose();
//   }

//   Future<void> _loadUserProfile() async {
//     try {
//       // Get userId from SharedPreferences
//       String? userId = await UserPreferences.getUserId();
      
//       if (userId != null && userId.isNotEmpty) {
//         if (mounted) {
//           final profileProvider = Provider.of<UserProfileProvider>(context, listen: false);
//           await profileProvider.loadUserProfile(userId);
          
//           // Update controllers with loaded data
//           if (profileProvider.name != null) {
//             _nameController.text = profileProvider.name!;
//           }
//           if (profileProvider.phoneNumber != null) {
//             _phoneController.text = profileProvider.phoneNumber!;
//           }
//           if (profileProvider.email != null) {
//             _emailController.text = profileProvider.email!;
//           }
//         }
//       } else {
//         // Fallback to SharedPreferences data if no userId
//         String? name = await UserPreferences.getName();
//         String? phone = await UserPreferences.getMobileNumber();
//         String? email = await UserPreferences.getEmail();

//         if (mounted) {
//           _nameController.text = name ?? '';
//           _phoneController.text = phone ?? '';
//           _emailController.text = email ?? '';
//         }
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error loading profile: ${e.toString()}'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

//   Future<void> _handleSave() async {
//     if (_formKey.currentState!.validate()) {
//       try {
//         final profileProvider = Provider.of<UserProfileProvider>(context, listen: false);
//         String? userId = await UserPreferences.getUserId();

//         if (userId != null && userId.isNotEmpty) {
//           // Update existing profile
//           await profileProvider.updateUserProfile(
//             userId: userId,
//             name: _nameController.text.trim(),
//             phoneNumber: _phoneController.text.trim(),
//             email: _emailController.text.trim(),
//           );
//         } else {
//           // Create new profile with timestamp as userId
//           userId = DateTime.now().millisecondsSinceEpoch.toString();
//           await profileProvider.saveUserProfile(
//             userId: userId,
//             name: _nameController.text.trim(),
//             phoneNumber: _phoneController.text.trim(),
//             email: _emailController.text.trim(),
//           );
//         }

//         // Update SharedPreferences
//         await UserPreferences.saveUser(
//           userId: userId,
//           name: _nameController.text.trim(),
//           mobileNumber: _phoneController.text.trim(),
//           email: _emailController.text.trim(),
//         );

//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Profile updated successfully!'),
//               backgroundColor: Colors.green,
//             ),
//           );
//         }
//       } catch (e) {
//         if (mounted) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Error saving profile: ${e.toString()}'),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//       }
//     }
//   }

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
//     // Remove +91 prefix if present for validation
//     String phoneNumber = value.trim().replaceFirst('+91', '');
//     if (phoneNumber.length != 10) {
//       return 'Please enter a valid 10-digit mobile number';
//     }
//     if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
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
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         centerTitle: true,
//         title: const Text(
//           'My Profile',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Consumer<UserProfileProvider>(
//         builder: (context, profileProvider, child) {
//           return SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 20),
//                     Center(
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           image: const DecorationImage(
//                             image: AssetImage('assets/profileimage.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Show loading indicator
//                     if (profileProvider.isLoading) ...[
//                       const Center(
//                         child: CircularProgressIndicator(),
//                       ),
//                       const SizedBox(height: 20),
//                     ],

//                     // Show error message if any
//                     if (profileProvider.errorMessage != null) ...[
//                       Container(
//                         width: double.infinity,
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.red.shade50,
//                           border: Border.all(color: Colors.red.shade200),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 profileProvider.errorMessage!,
//                                 style: TextStyle(
//                                   color: Colors.red.shade700,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ),
//                             IconButton(
//                               icon: const Icon(Icons.close, size: 20),
//                               onPressed: () {
//                                 profileProvider.clearError();
//                               },
//                               color: Colors.red.shade700,
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                     ],

//                     // Full Name
//                     TextFormField(
//                       controller: _nameController,
//                       validator: _validateName,
//                       decoration: const InputDecoration(
//                         labelText: 'Full Name',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.person),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Phone Number
//                     TextFormField(
//                       controller: _phoneController,
//                       validator: _validatePhone,
//                       decoration: const InputDecoration(
//                         labelText: 'Phone Number',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.phone),
//                       ),
//                       keyboardType: TextInputType.phone,
//                     ),
//                     const SizedBox(height: 16),

//                     // Email
//                     TextFormField(
//                       controller: _emailController,
//                       validator: _validateEmail,
//                       decoration: const InputDecoration(
//                         labelText: 'Email',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.email),
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                     ),
//                     const SizedBox(height: 250),

//                     // Save Button
//                     SizedBox(
//                       width: double.infinity,
//                       height: 48,
//                       child: ElevatedButton(
//                         onPressed: profileProvider.isUpdating ? null : _handleSave,
//                         style: ButtonStyle(
//                           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                           padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
//                           backgroundColor: MaterialStateProperty.all(Colors.transparent),
//                           elevation: MaterialStateProperty.all(0),
//                         ),
//                         child: Ink(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: profileProvider.isUpdating
//                                   ? [Colors.grey.shade400, Colors.grey.shade500]
//                                   : [const Color(0xFF214194), const Color(0xFF4C7EFF)],
//                             ),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Container(
//                             alignment: Alignment.center,
//                             child: profileProvider.isUpdating
//                                 ? const SizedBox(
//                                     height: 20,
//                                     width: 20,
//                                     child: CircularProgressIndicator(
//                                       color: Colors.white,
//                                       strokeWidth: 2,
//                                     ),
//                                   )
//                                 : const Text(
//                                     'Save',
//                                     style: TextStyle(fontSize: 16, color: Colors.white),
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }











import 'package:backup_ticket/helper/auth_helper.dart';
import 'package:backup_ticket/provider/auth/user_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _loadUserProfile() async {
    try {
      // Get userId from SharedPreferences
      String? userId = await UserPreferences.getUserId();
      
      if (userId != null && userId.isNotEmpty) {
        if (mounted) {
          final profileProvider = Provider.of<UserProfileProvider>(context, listen: false);
          await profileProvider.loadUserProfile(userId);
          
          // Update controllers with loaded data
          if (profileProvider.name != null && profileProvider.name!.isNotEmpty) {
            _nameController.text = profileProvider.name!;
            print('Loaded name: ${profileProvider.name}'); // Debug print
          }
          if (profileProvider.phoneNumber != null && profileProvider.phoneNumber!.isNotEmpty) {
            _phoneController.text = profileProvider.phoneNumber!;
            print('Loaded phone: ${profileProvider.phoneNumber}'); // Debug print
          }
          if (profileProvider.email != null && profileProvider.email!.isNotEmpty) {
            _emailController.text = profileProvider.email!;
            print('Loaded email: ${profileProvider.email}'); // Debug print
          }
        }
      } else {
        print('No userId found, loading from SharedPreferences'); // Debug print
        // Fallback to SharedPreferences data if no userId
        String? name = await UserPreferences.getName();
        String? phone = await UserPreferences.getMobileNumber();
        String? email = await UserPreferences.getEmail();

        print('SharedPreferences - Name: $name, Phone: $phone, Email: $email'); // Debug print

        if (mounted) {
          _nameController.text = name ?? '';
          _phoneController.text = phone ?? '';
          _emailController.text = email ?? '';
        }
      }
    } catch (e) {
      print('Error in _loadUserProfile: $e'); // Debug print
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error loading profile: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _handleSave() async {
    if (_formKey.currentState!.validate()) {
      try {
        final profileProvider = Provider.of<UserProfileProvider>(context, listen: false);
        String? userId = await UserPreferences.getUserId();

        if (userId != null && userId.isNotEmpty) {
          // Update existing profile
          await profileProvider.updateUserProfile(
            userId: userId,
            name: _nameController.text.trim(),
            phoneNumber: _phoneController.text.trim(),
            email: _emailController.text.trim(),
          );
        } else {
          // Create new profile with timestamp as userId
          userId = DateTime.now().millisecondsSinceEpoch.toString();
          await profileProvider.saveUserProfile(
            userId: userId,
            name: _nameController.text.trim(),
            phoneNumber: _phoneController.text.trim(),
            email: _emailController.text.trim(),
          );
        }

        // Update SharedPreferences
        await UserPreferences.saveUser(
          userId: userId,
          name: _nameController.text.trim(),
          mobileNumber: _phoneController.text.trim(),
          email: _emailController.text.trim(),
        );

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Profile updated successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error saving profile: ${e.toString()}'),
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
    // Remove +91 prefix if present for validation
    String phoneNumber = value.trim().replaceFirst('+91', '');
    if (phoneNumber.length != 10) {
      return 'Please enter a valid 10-digit mobile number';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Consumer<UserProfileProvider>(
        builder: (context, profileProvider, child) {
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/profileimage.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Show loading indicator
                    if (profileProvider.isLoading) ...[
                      const Center(
                        child: CircularProgressIndicator(),
                      ),
                      const SizedBox(height: 20),
                    ],

                    // Show error message if any
                    if (profileProvider.errorMessage != null) ...[
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          border: Border.all(color: Colors.red.shade200),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                profileProvider.errorMessage!,
                                style: TextStyle(
                                  color: Colors.red.shade700,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.close, size: 20),
                              onPressed: () {
                                profileProvider.clearError();
                              },
                              color: Colors.red.shade700,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],

                    // Full Name
                    TextFormField(
                      controller: _nameController,
                      validator: _validateName,
                      decoration: const InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Phone Number
                    TextFormField(
                      controller: _phoneController,
                      validator: _validatePhone,
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),

                    // Email
                    TextFormField(
                      controller: _emailController,
                      validator: _validateEmail,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 250),

                    // Save Button
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: profileProvider.isUpdating ? null : _handleSave,
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          elevation: MaterialStateProperty.all(0),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: profileProvider.isUpdating
                                  ? [Colors.grey.shade400, Colors.grey.shade500]
                                  : [const Color(0xFF214194), const Color(0xFF4C7EFF)],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: profileProvider.isUpdating
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text(
                                    'Save',
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}