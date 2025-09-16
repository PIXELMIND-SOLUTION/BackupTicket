
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFF4A90E2),
//               Color(0xFF357ABD),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//               // Status bar spacing
//               const SizedBox(height: 20),
              
//               // Profile section
//               Column(
//                 children: [
//                   // Profile image with edit icon
//                   Stack(
//                     children: [
//                       Container(
//                         width: 80,
//                         height: 80,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(color: Colors.white, width: 2),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.asset(
//                             'assets/profileimage.png', 
//                             fit: BoxFit.cover,
//                             errorBuilder: (context, error, stackTrace) {
//                               return Container(
//                                 color: Colors.grey[300],
//                                 child: const Icon(
//                                   Icons.person,
//                                   size: 40,
//                                   color: Colors.grey,
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: -2,
//                         right: -2,
//                         child: Container(
//                           width: 24,
//                           height: 24,
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: const Icon(
//                             Icons.edit,
//                             size: 14,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 12),
                  
//                   // PMS text
//                   const Text(
//                     'PMS',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
              
//               const SizedBox(height: 30),
              
//               // Profile card
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: double.infinity,
//                   constraints: BoxConstraints(
//                     minHeight: MediaQuery.of(context).size.height - 280,
//                   ),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(24),
//                         topRight: Radius.circular(24),
//                         bottomLeft: Radius.circular(25),
//                         bottomRight: Radius.circular(25),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(24.0),
//                       child: Column(
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Profile title
//                           const Text(
//                             'Profile',
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
                          
//                           const SizedBox(height: 24),
                          
//                           // Menu items
//                           _buildMenuItem(
//                             icon: Icons.person_outline,
//                             iconColor: const Color(0xFF4A90E2),
//                             title: 'My Profile',
//                             onTap: () {},
//                           ),
                          
//                           _buildMenuItem(
//                             icon: Icons.confirmation_number_outlined,
//                             iconColor: const Color(0xFF8B5CF6),
//                             title: 'My Posted Tickets',
//                             onTap: () {},
//                           ),
                          
//                           _buildMenuItem(
//                             icon: Icons.receipt_outlined,
//                             iconColor: const Color(0xFF06B6D4),
//                             title: 'My Purchased Tickets',
//                             onTap: () {},
//                           ),
                          
//                           _buildMenuItem(
//                             icon: Icons.card_giftcard_outlined,
//                             iconColor: const Color(0xFFF59E0B),
//                             title: 'Refer & Earn',
//                             onTap: () {},
//                           ),
                          
//                           const SizedBox(height: 24),
                          
//                           // Support & Settings section
//                           Row(
//                             children: [
//                               const Text(
//                                 'Support & Settings',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
                          
//                           const SizedBox(height: 16),
                          
//                           _buildMenuItem(
//                             icon: Icons.privacy_tip_outlined,
//                             iconColor: const Color(0xFFF59E0B),
//                             title: 'Privacy Policy',
//                             onTap: () {},
//                           ),
                          
//                           _buildMenuItem(
//                             icon: Icons.info_outline,
//                             iconColor: const Color(0xFF06B6D4),
//                             title: 'About Us',
//                             onTap: () {},
//                           ),
                          
//                           _buildMenuItem(
//                             icon: Icons.help_outline,
//                             iconColor: const Color(0xFF4A90E2),
//                             title: 'Help',
//                             onTap: () {},
//                           ),
                          
//                           _buildMenuItem(
//                             icon: Icons.logout_outlined,
//                             iconColor: const Color(0xFF8B5CF6),
//                             title: 'Logout',
//                             onTap: () {},
//                             showDivider: false,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//               ),
//               ]
//               )
            
//           ),
//         ),
//       ),
//     );
//   }
  
//   Widget _buildMenuItem({
//     required IconData icon,
//     required Color iconColor,
//     required String title,
//     required VoidCallback onTap,
//     bool showDivider = true,
//   }) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: onTap,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: Row(
//               children: [
//                 Container(
//                   width: 40,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     color: iconColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Icon(
//                     icon,
//                     color: iconColor,
//                     size: 20,
//                   ),
//                 ),
//                 const SizedBox(width: 16),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 const Icon(
//                   Icons.chevron_right,
//                   color: Colors.grey,
//                   size: 24,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         if (showDivider)
//           const Divider(
//             height: 1,
//             thickness: 0.5,
//             color: Color(0xFFE5E5E5),
//           ),
//       ],
//     );
//   }
// }

















import 'package:backup_ticket/views/postedtickets/posted_tickets.dart';
import 'package:backup_ticket/views/profile/my_profile.dart';
import 'package:backup_ticket/views/purchasedtickets/purchased_tickets.dart';
import 'package:backup_ticket/views/referearn/refer_earn_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/profilerectangle.png',),
            fit: BoxFit.cover,
            
          
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
              // Status bar spacing
              const SizedBox(height: 20),
              
              // Profile section
              Column(
                children: [
                  // Profile image with edit icon
                  Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/profileimage.png', 
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -2,
                        right: -2,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  
                  // PMS text
                  const Text(
                    'PMS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),
              
              // Profile card
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 280,
                  ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Profile title
                          const Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          
                          const SizedBox(height: 24),
                          
                          // Menu items
                          _buildMenuItem(
                            icon: Icons.person_outline,
                            iconColor: const Color(0xFF4A90E2),
                            title: 'My Profile',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
                            },
                          ),
                          
                          _buildMenuItem(
                            icon: Icons.confirmation_number_outlined,
                            iconColor: const Color(0xFF8B5CF6),
                            title: 'My Posted Tickets',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PostedTickets()));
                            },
                          ),
                          
                          _buildMenuItem(
                            icon: Icons.receipt_outlined,
                            iconColor: const Color(0xFF06B6D4),
                            title: 'My Purchased Tickets',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PurchasedTickets()));
                            },
                          ),
                          
                          _buildMenuItem(
                            icon: Icons.card_giftcard_outlined,
                            iconColor: const Color(0xFFF59E0B),
                            title: 'Refer & Earn',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReferEarnScreen()));
                            },
                          ),
                          
                          const SizedBox(height: 24),
                          
                          // Support & Settings section
                          Row(
                            children: [
                              const Text(
                                'Support & Settings',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: 16),
                          
                          _buildMenuItem(
                            icon: Icons.privacy_tip_outlined,
                            iconColor: const Color(0xFFF59E0B),
                            title: 'Privacy Policy',
                            onTap: () {},
                          ),
                          
                          _buildMenuItem(
                            icon: Icons.info_outline,
                            iconColor: const Color(0xFF06B6D4),
                            title: 'About Us',
                            onTap: () {},
                          ),
                          
                          _buildMenuItem(
                            icon: Icons.help_outline,
                            iconColor: const Color(0xFF4A90E2),
                            title: 'Help',
                            onTap: () {},
                          ),
                          
                          _buildMenuItem(
                            icon: Icons.logout_outlined,
                            iconColor: const Color(0xFF8B5CF6),
                            title: 'Logout',
                            onTap: () {},
                            showDivider: false,
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
              ]
              )
            
          ),
        ),
      ),
    );
  }
  
  Widget _buildMenuItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required VoidCallback onTap,
    bool showDivider = true,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: iconColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        if (showDivider)
          const Divider(
            height: 1,
            thickness: 0.5,
            color: Color(0xFFE5E5E5),
          ),
      ],
    );
  }
}