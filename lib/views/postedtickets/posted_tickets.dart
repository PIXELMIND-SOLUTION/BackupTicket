// import 'package:flutter/material.dart';

// class PostedTickets extends StatefulWidget {
//   const PostedTickets({super.key});

//   @override
//   State<PostedTickets> createState() => _PostedTicketsState();
// }

// class _PostedTicketsState extends State<PostedTickets>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text(
//           'My Posted Tickets',
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
//         ),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.black87),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: TabBar(
//               controller: _tabController,
//               indicator: BoxDecoration(
//                 color: const Color(0xFF1976D2),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               indicatorSize: TabBarIndicatorSize.tab,
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.grey[600],
//               labelStyle: const TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 14,
//               ),
//               unselectedLabelStyle: const TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//               ),
//               dividerColor: Colors.transparent, 
//               overlayColor: MaterialStateProperty.all(
//                 Colors.transparent,
//               ), // Remove tap effects
//               splashFactory: NoSplash.splashFactory, // Remove splash animation
//               tabs: [
//                 Tab(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(Icons.movie, size: 20),
//                       SizedBox(width: 8),
//                       Text('Movies'),
//                     ],
//                   ),
//                 ),
//                 Tab(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(Icons.directions_bus, size: 20),
//                       SizedBox(width: 8),
//                       Text('Bus'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // Tab Bar View
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 // Movies Tab
//                 _buildMoviesTab(),

//                 // Bus Tab
//                 _buildBusTab(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMoviesTab() {
//     return ListView.builder(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       itemCount: 3,
//       itemBuilder: (context, index) {
//         return _buildMovieTicketCard(context);
//       },
//     );
//   }

//   Widget _buildBusTab() {
//     return ListView(
//       children: [
       
//         _buildBusTicketCard(
//           companyName: 'Orange Travels',
//           badgeText: 'AC',
//           badgeColor: const Color(0xFFE3F2FD),
//           badgeTextColor: const Color(0xFF1976D2),
//           fromCity: 'Hyderabad',
//           toCity: 'Kalvakole',
//           departureTime: '08:00',
//           arrivalTime: '11:30',
//           price: '₹ 200',
//           seats: 'Seat : L11',
//         ),
//         _buildBusTicketCard(
//           companyName: 'Orange Travels',
//           badgeText: 'AC',
//           badgeColor: const Color(0xFFE3F2FD),
//           badgeTextColor: const Color(0xFF1976D2),
//           fromCity: 'Hyderabad',
//           toCity: 'Kalvakole',
//           departureTime: '08:00',
//           arrivalTime: '11:30',
//           price: '₹ 200',
//           seats: 'Seat : L11',
//         ),
//       ],
//     );
//   }

//   Widget _buildMovieTicketCard(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Movie Poster
//           Container(
//             width: 60,
//             height: 80,
//             decoration: BoxDecoration(
//               color: Colors.grey[300],
//               borderRadius: BorderRadius.circular(6),
//               image: const DecorationImage(
//                 image: AssetImage('assets/kubera.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),

//           // Movie Details
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Kuberaa',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 const Text(
//                   '3D • Telugu',
//                   style: TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//                 const SizedBox(height: 4),
//                 const Text(
//                   '4 Aug, 8:30 PM',
//                   style: TextStyle(fontSize: 14, color: Colors.black),
//                 ),
//                 const SizedBox(height: 2),
//                 const Text(
//                   'INOX: GVK One, Hyderabad',
//                   style: TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),

//           // Price and Menu
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.more_vert, color: Colors.grey),
//                 constraints: const BoxConstraints(),
//                 padding: EdgeInsets.zero,
//               ),
//               const Text(
//                 '₹ 200',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black87,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBusTicketCard({
//     required String companyName,
//     required String badgeText,
//     required Color badgeColor,
//     required Color badgeTextColor,
//     required String fromCity,
//     required String toCity,
//     required String departureTime,
//     required String arrivalTime,
//     required String price,
//     required String seats,
//   }) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: ClipPath(
//         clipper: TicketClipper(),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.1),
//                 spreadRadius: 1,
//                 blurRadius: 6,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 // Company name and badge row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         const Icon(
//                           Icons.directions_bus,
//                           size: 20,
//                           color: Colors.black87,
//                         ),
//                         const SizedBox(width: 8),
//                         Text(
//                           companyName,
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 8,
//                         vertical: 4,
//                       ),
//                       decoration: BoxDecoration(
//                         color: badgeColor,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Text(
//                         badgeText,
//                         style: TextStyle(
//                           color: badgeTextColor,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 16),

//                 // Route and time row
//                 Row(
//                   children: [
//                     // Departure
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           fromCity,
//                           style: TextStyle(
//                             color: Colors.grey[600],
//                             fontSize: 12,
//                           ),
//                         ),
//                         Text(
//                           departureTime,
//                           style: const TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ],
//                     ),

//                     // Route line with bus icon
//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             Container(
//                               width: 8,
//                               height: 8,
//                               decoration: const BoxDecoration(
//                                 color: Color(0xFF4A90E2),
//                                 shape: BoxShape.circle,
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 height: 2,
//                                 color: const Color(0xFF4A90E2),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       padding: const EdgeInsets.all(4),
//                                       decoration: const BoxDecoration(
//                                         color: Color(0xFF4A90E2),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Icon(
//                                         Icons.directions_bus,
//                                         color: Colors.white,
//                                         size: 16,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               width: 8,
//                               height: 8,
//                               decoration: const BoxDecoration(
//                                 color: Color(0xFF4A90E2),
//                                 shape: BoxShape.circle,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),

//                     // Arrival
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           toCity,
//                           style: TextStyle(
//                             color: Colors.grey[600],
//                             fontSize: 12,
//                           ),
//                         ),
//                         Text(
//                           arrivalTime,
//                           style: const TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 16),

//                 // Divider
//                 Container(height: 1, color: Colors.grey[200]),

//                 const SizedBox(height: 12),

//                 // Price and select row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           price,
//                           style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         Text(
//                           seats,
//                           style: const TextStyle(
//                             color: Color(0xFF4A90E2),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Row(
//                       children: [
//                         Text(
//                           'Select',
//                           style: TextStyle(
//                             color: Color(0xFF4A90E2),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         SizedBox(width: 4),
//                         Icon(
//                           Icons.arrow_forward_ios,
//                           color: Color(0xFF4A90E2),
//                           size: 14,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TicketClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     double circleRadius = 12.0;
//     double middleY = size.height / 2;

//     // Start from top left, with rounded corner
//     path.moveTo(12, 0);
//     path.lineTo(size.width - 12, 0);
//     path.quadraticBezierTo(size.width, 0, size.width, 12);

//     // Right side - go down to middle, create semicircle cut
//     path.lineTo(size.width, middleY - circleRadius);
//     path.arcToPoint(
//       Offset(size.width, middleY + circleRadius),
//       radius: Radius.circular(circleRadius),
//       clockwise: false,
//     );

//     // Continue down right side
//     path.lineTo(size.width, size.height - 12);
//     path.quadraticBezierTo(
//       size.width,
//       size.height,
//       size.width - 12,
//       size.height,
//     );

//     // Bottom side
//     path.lineTo(12, size.height);
//     path.quadraticBezierTo(0, size.height, 0, size.height - 12);

//     // Left side - go up to middle, create semicircle cut
//     path.lineTo(0, middleY + circleRadius);
//     path.arcToPoint(
//       Offset(0, middleY - circleRadius),
//       radius: Radius.circular(circleRadius),
//       clockwise: false,
//     );

//     // Continue up left side
//     path.lineTo(0, 12);
//     path.quadraticBezierTo(0, 0, 12, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
















import 'package:backup_ticket/views/Sell/sell_movie_ticket.dart';
import 'package:flutter/material.dart';

class PostedTickets extends StatefulWidget {
  const PostedTickets({super.key});

  @override
  State<PostedTickets> createState() => _PostedTicketsState();
}

class _PostedTicketsState extends State<PostedTickets>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Posted Tickets',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black87),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: const Color(0xFF1976D2),
                borderRadius: BorderRadius.circular(25),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[600],
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              dividerColor: Colors.transparent, 
              overlayColor: MaterialStateProperty.all(
                Colors.transparent,
              ), // Remove tap effects
              splashFactory: NoSplash.splashFactory, // Remove splash animation
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.movie, size: 20),
                      SizedBox(width: 8),
                      Text('Movies'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.directions_bus, size: 20),
                      SizedBox(width: 8),
                      Text('Bus'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Movies Tab
                _buildMoviesTab(),

                // Bus Tab
                _buildBusTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoviesTab() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: 3,
      itemBuilder: (context, index) {
        return _buildMovieTicketCard(context, index);
      },
    );
  }

  Widget _buildBusTab() {
    return ListView(
      children: [
       
        _buildBusTicketCard(
          companyName: 'Orange Travels',
          badgeText: 'AC',
          badgeColor: const Color(0xFFE3F2FD),
          badgeTextColor: const Color(0xFF1976D2),
          fromCity: 'Hyderabad',
          toCity: 'Kalvakole',
          departureTime: '08:00',
          arrivalTime: '11:30',
          price: '₹ 200',
          seats: 'Seat : L11',
        ),
        _buildBusTicketCard(
          companyName: 'Orange Travels',
          badgeText: 'AC',
          badgeColor: const Color(0xFFE3F2FD),
          badgeTextColor: const Color(0xFF1976D2),
          fromCity: 'Hyderabad',
          toCity: 'Kalvakole',
          departureTime: '08:00',
          arrivalTime: '11:30',
          price: '₹ 200',
          seats: 'Seat : L11',
        ),
      ],
    );
  }

  Widget _buildMovieTicketCard(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Movie Poster
          Container(
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(6),
              image: const DecorationImage(
                image: AssetImage('assets/kubera.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Movie Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kuberaa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '3D • Telugu',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                const Text(
                  '4 Aug, 8:30 PM',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(height: 2),
                const Text(
                  'INOX: GVK One, Hyderabad',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),

          // Price and Menu
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  _handleMenuAction(context, value, index);
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem<String>(
                    value: 'edit',
                    child: Row(
                      children: [
                        Icon(Icons.edit, size: 18, color: Colors.blue),
                        SizedBox(width: 8),
                        Text('Edit'),
                      ],
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'delete',
                    child: Row(
                      children: [
                        Icon(Icons.delete, size: 18, color: Colors.red),
                        SizedBox(width: 8),
                        Text('Delete', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
                icon: const Icon(Icons.more_vert, color: Colors.grey),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(height: 8),
              const Text(
                '₹ 200',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _handleMenuAction(BuildContext context, String action, int index) {
    switch (action) {
      case 'edit':
        _showEditDialog(context, index);
        break;
      case 'delete':
        _showDeleteDialog(context, index);
        break;
    }
  }

  // void _showEditDialog(BuildContext context, int index) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Edit Ticket'),
  //         content: const Text('Edit functionality will be implemented here.'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Cancel'),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>SellMovieTicket()));

  //               // Navigator.of(context).pop();
  //               // // Implement edit functionality
  //               // ScaffoldMessenger.of(context).showSnackBar(
  //               //   SnackBar(content: Text('Edit ticket at index $index')),
  //               // );
  //             },
  //             child: const Text('Save'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }


  void _showEditDialog(BuildContext context, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SellMovieTicket()),
  );
}


  void _showDeleteDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Ticket'),
          content: const Text('Are you sure you want to delete this ticket? This action cannot be undone.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Implement delete functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Ticket at index $index deleted'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBusTicketCard({
    required String companyName,
    required String badgeText,
    required Color badgeColor,
    required Color badgeTextColor,
    required String fromCity,
    required String toCity,
    required String departureTime,
    required String arrivalTime,
    required String price,
    required String seats,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ClipPath(
        clipper: TicketClipper(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Company name and badge row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.directions_bus,
                          size: 20,
                          color: Colors.black87,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          companyName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: badgeColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        badgeText,
                        style: TextStyle(
                          color: badgeTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Route and time row
                Row(
                  children: [
                    // Departure
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fromCity,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          departureTime,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),

                    // Route line with bus icon
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Color(0xFF4A90E2),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                color: const Color(0xFF4A90E2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF4A90E2),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.directions_bus,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Color(0xFF4A90E2),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Arrival
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          toCity,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          arrivalTime,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Divider
                Container(height: 1, color: Colors.grey[200]),

                const SizedBox(height: 12),

                // Price and select row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          seats,
                          style: const TextStyle(
                            color: Color(0xFF4A90E2),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'Select',
                          style: TextStyle(
                            color: Color(0xFF4A90E2),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF4A90E2),
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double circleRadius = 12.0;
    double middleY = size.height / 2;

    // Start from top left, with rounded corner
    path.moveTo(12, 0);
    path.lineTo(size.width - 12, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 12);

    // Right side - go down to middle, create semicircle cut
    path.lineTo(size.width, middleY - circleRadius);
    path.arcToPoint(
      Offset(size.width, middleY + circleRadius),
      radius: Radius.circular(circleRadius),
      clockwise: false,
    );

    // Continue down right side
    path.lineTo(size.width, size.height - 12);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - 12,
      size.height,
    );

    // Bottom side
    path.lineTo(12, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 12);

    // Left side - go up to middle, create semicircle cut
    path.lineTo(0, middleY + circleRadius);
    path.arcToPoint(
      Offset(0, middleY - circleRadius),
      radius: Radius.circular(circleRadius),
      clockwise: false,
    );

    // Continue up left side
    path.lineTo(0, 12);
    path.quadraticBezierTo(0, 0, 12, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}