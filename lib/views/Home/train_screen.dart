// import 'package:backup_ticket/views/notifications/notification_screen.dart';
// import 'package:flutter/material.dart';

// class TrainScreen extends StatelessWidget {
//   const TrainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(90),
//         child: AppBar(
//           automaticallyImplyLeading: false,
//           elevation: 0,
//           flexibleSpace: ClipRRect(
//             borderRadius: const BorderRadius.only(
//               bottomLeft: Radius.circular(25),
//               bottomRight: Radius.circular(25),
//             ),
//             child: Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//               child: SafeArea(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // Left side (location)
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           children: const [
//                             Icon(Icons.send, color: Colors.white, size: 18),
//                             SizedBox(width: 5),
//                             Text(
//                               "Hyderabad, Telangana..",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             Icon(
//                               Icons.keyboard_arrow_down,
//                               color: Colors.white,
//                               size: 20,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 2),
//                         const Text(
//                           "       Hyderabad, Telangana, India",
//                           style: TextStyle(color: Colors.white, fontSize: 12),
//                         ),
//                       ],
//                     ),

//                     // Right side (notification)
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black26,
//                             blurRadius: 4,
//                             offset: Offset(0, 2),
//                           ),
//                         ],
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
//                         },
//                         child: const Icon(
//                           Icons.notifications_none,
//                           color: Colors.black87,
//                           size: 22,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Center(
//         child: Text('Coming Soon',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
//       ),
//     );
//   }
// }

import 'package:backup_ticket/helper/auth_helper.dart';
import 'package:backup_ticket/views/notifications/notification_screen.dart';
import 'package:flutter/material.dart';

class TrainScreen extends StatefulWidget {
  const TrainScreen({super.key});

  @override
  State<TrainScreen> createState() => _TrainScreenState();
}

class _TrainScreenState extends State<TrainScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _trainAnimation;
  late Animation<double> _fadeAnimation;

  String _userName = "Guest";

  @override
  void initState() {
    _loadUserName();

    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    _trainAnimation = Tween<double>(
      begin: -0.3,
      end: 1.3,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _fadeAnimation = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _loadUserName() async {
    final name = await UserPreferences.getName();
    if (mounted && name != null && name.isNotEmpty) {
      setState(() {
        _userName = name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Row(
                        //   children: const [
                        //     Icon(Icons.send, color: Colors.white, size: 18),
                        //     SizedBox(width: 5),
                        //     Text(
                        //       "Hyderabad, Telangana..",
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 16,
                        //         fontWeight: FontWeight.w600,
                        //       ),
                        //     ),
                        //     Icon(
                        //       Icons.keyboard_arrow_down,
                        //       color: Colors.white,
                        //       size: 20,
                        //     ),
                        //   ],
                        // ),
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Hello, $_userName",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 2),
                        // const Text(
                        //   "       Hyderabad, Telangana, India",
                        //   style: TextStyle(color: Colors.white, fontSize: 12),
                        // ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationScreen(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.notifications_none,
                          color: Colors.black87,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Train Animation
              SizedBox(
                height: 120,
                child: Stack(
                  children: [
                    // Train tracks
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: CustomPaint(
                        size: Size(MediaQuery.of(context).size.width, 4),
                        painter: TrackPainter(),
                      ),
                    ),
                    // Animated train
                    AnimatedBuilder(
                      animation: _trainAnimation,
                      builder: (context, child) {
                        return Positioned(
                          left:
                              MediaQuery.of(context).size.width *
                              _trainAnimation.value,
                          bottom: 20,
                          child: FadeTransition(
                            opacity: _fadeAnimation,
                            child: Icon(
                              Icons.train,
                              size: 60,
                              color: Color(0xFF1976D2),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Coming Soon Badge
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'COMING SOON',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Main title
              // const Text(
              //   'Train Booking',
              //   style: TextStyle(
              //     fontSize: 32,
              //     fontWeight: FontWeight.bold,
              //     color: Color(0xFF0D47A1),
              //   ),
              // ),
              const SizedBox(height: 12),
              // Subtitle
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 40),
              //   child: Text(
              //     'We\'re working hard to bring you seamless train ticket booking experience',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontSize: 16,
              //       color: Colors.grey.shade700,
              //       height: 1.5,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 40),
              // Features
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 40),
              //   child: Column(
              //     children: [
              //       _buildFeatureRow(
              //         Icons.search,
              //         'Search trains across India',
              //       ),
              //       const SizedBox(height: 16),
              //       _buildFeatureRow(
              //         Icons.confirmation_number_outlined,
              //         'Quick & easy booking',
              //       ),
              //       const SizedBox(height: 16),
              //       _buildFeatureRow(
              //         Icons.notifications_active_outlined,
              //         'Real-time updates',
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 50),
              // Notify button
              // Container(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 32,
              //     vertical: 14,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(30),
              //     border: Border.all(
              //       color: Color(0xFF1976D2),
              //       width: 2,
              //     ),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.blue.shade100,
              //         blurRadius: 10,
              //         offset: Offset(0, 4),
              //       ),
              //     ],
              //   ),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.min,
              //     children: const [
              //       Icon(
              //         Icons.notifications_outlined,
              //         color: Color(0xFF1976D2),
              //         size: 20,
              //       ),
              //       SizedBox(width: 8),
              //       Text(
              //         'Notify Me When Ready',
              //         style: TextStyle(
              //           color: Color(0xFF1976D2),
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Color(0xFF1976D2), size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
          ),
        ),
      ],
    );
  }
}

class TrackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    // Draw two parallel lines for tracks
    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), paint);
    canvas.drawLine(Offset(0, 8), Offset(size.width, 8), paint);

    // Draw sleepers (ties)
    for (double i = 0; i < size.width; i += 30) {
      canvas.drawLine(Offset(i, -4), Offset(i, 12), paint..strokeWidth = 2);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
