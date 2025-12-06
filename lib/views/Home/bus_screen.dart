// // // // ignore_for_file: deprecated_member_use

// // // import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
// // // import 'package:backup_ticket/views/notifications/notification_screen.dart';
// // // import 'package:flutter/material.dart';

// // // class BusScreen extends StatelessWidget {
// // //   const BusScreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: PreferredSize(
// // //         preferredSize: const Size.fromHeight(90),
// // //         child: AppBar(
// // //           automaticallyImplyLeading: false,
// // //           elevation: 0,
// // //           flexibleSpace: ClipRRect(
// // //             borderRadius: const BorderRadius.only(
// // //               bottomLeft: Radius.circular(25),
// // //               bottomRight: Radius.circular(25),
// // //             ),
// // //             child: Container(
// // //               decoration: const BoxDecoration(
// // //                 gradient: LinearGradient(
// // //                   colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
// // //                   begin: Alignment.topLeft,
// // //                   end: Alignment.bottomRight,
// // //                 ),
// // //               ),
// // //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
// // //               child: SafeArea(
// // //                 child: Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                   children: [
// // //                     // Left side (location)
// // //                     Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       mainAxisAlignment: MainAxisAlignment.center,
// // //                       children: [
// // //                         Row(
// // //                           children: const [
// // //                             Icon(Icons.send, color: Colors.white, size: 18),
// // //                             SizedBox(width: 5),
// // //                             Text(
// // //                               "Hyderabad, Telangana..",
// // //                               style: TextStyle(
// // //                                 color: Colors.white,
// // //                                 fontSize: 16,
// // //                                 fontWeight: FontWeight.w600,
// // //                               ),
// // //                             ),
// // //                             Icon(
// // //                               Icons.keyboard_arrow_down,
// // //                               color: Colors.white,
// // //                               size: 20,
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         SizedBox(height: 2),
// // //                         const Text(
// // //                           "       Hyderabad, Telangana, India",
// // //                           style: TextStyle(color: Colors.white, fontSize: 12),
// // //                         ),
// // //                       ],
// // //                     ),

// // //                     // Right side (notification)
// // //                     Container(
// // //                       padding: const EdgeInsets.all(8),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.white,
// // //                         shape: BoxShape.circle,
// // //                         boxShadow: [
// // //                           BoxShadow(
// // //                             color: Colors.black26,
// // //                             blurRadius: 4,
// // //                             offset: Offset(0, 2),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       child: GestureDetector(
// // //                         onTap: () {
// // //                           Navigator.push(
// // //                             context,
// // //                             MaterialPageRoute(
// // //                               builder: (context) => NotificationScreen(),
// // //                             ),
// // //                           );
// // //                         },
// // //                         child: const Icon(
// // //                           Icons.notifications_none,
// // //                           color: Colors.black87,
// // //                           size: 22,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //       backgroundColor: const Color(0xFFF5F5F5),
// // //       body: SafeArea(
// // //         child: Column(
// // //           children: [
// // //             Expanded(
// // //               child: SingleChildScrollView(
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: Container(
// // //                             margin: const EdgeInsets.all(16.0),
// // //                             padding: const EdgeInsets.symmetric(
// // //                               horizontal: 16.0,
// // //                             ),
// // //                             height: 50,
// // //                             decoration: BoxDecoration(
// // //                               border: Border.all(color: Colors.grey.shade300),
// // //                               color: Colors.white,
// // //                               borderRadius: BorderRadius.circular(25),
// // //                               boxShadow: [
// // //                                 BoxShadow(
// // //                                   color: Colors.grey.withOpacity(0.1),
// // //                                   spreadRadius: 1,
// // //                                   blurRadius: 10,
// // //                                   offset: const Offset(0, 2),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             child: const Row(
// // //                               children: [
// // //                                 Icon(
// // //                                   Icons.search,
// // //                                   color: Colors.grey,
// // //                                   size: 20,
// // //                                 ),
// // //                                 SizedBox(width: 12),
// // //                                 Expanded(
// // //                                   child: Text(
// // //                                     'Search',
// // //                                     style: TextStyle(
// // //                                       color: Colors.grey,
// // //                                       fontSize: 16,
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ),

// // //                         // Filter Button
// // //                         Container(
// // //                           margin: const EdgeInsets.only(right: 16.0),
// // //                           child: const CircleAvatar(
// // //                             radius: 25,
// // //                             backgroundColor: Color(0xFF4A90E2),
// // //                             child: Icon(
// // //                               Icons.calendar_month,
// // //                               color: Colors.white,
// // //                               size: 20,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),

// // //                     // Available Nearby Bus Tickets Section
// // //                     Padding(
// // //                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // //                       child: Text(
// // //                         'Available Nearby Bus Tickets',
// // //                         style: TextStyle(
// // //                           fontSize: 18,
// // //                           fontWeight: FontWeight.bold,
// // //                           color: Colors.black87,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 16),

// // //                     // Bus Ticket Cards
// // //                     GestureDetector(
// // //                       onTap: () {
// // //                         Navigator.push(
// // //                           context,
// // //                           MaterialPageRoute(
// // //                             builder: (context) => BusDetailsScreen(),
// // //                           ),
// // //                         );
// // //                       },
// // //                       child: _buildBusTicketCard(
// // //                         companyName: 'Orange Travels',
// // //                         badgeText: 'AC',
// // //                         badgeColor: Color(0xFFE3F2FD),
// // //                         badgeTextColor: Color(0xFF1976D2),
// // //                         fromCity: 'Hyderabad',
// // //                         toCity: 'Kalvakole',
// // //                         departureTime: '08:00',
// // //                         arrivalTime: '11:30',
// // //                         price: '₹ 200',
// // //                         seats: 'Seat : L11',
// // //                       ),
// // //                     ),

// // //                     _buildBusTicketCard(
// // //                       companyName: 'Orange Travels',
// // //                       badgeText: 'AC',
// // //                       badgeColor: Color(0xFFE3F2FD),
// // //                       badgeTextColor: Color(0xFF1976D2),
// // //                       fromCity: 'Hyderabad',
// // //                       toCity: 'Kalvakole',
// // //                       departureTime: '08:00',
// // //                       arrivalTime: '11:30',
// // //                       price: '₹ 200',
// // //                       seats: 'Seat : L11',
// // //                     ),

// // //                     _buildBusTicketCard(
// // //                       companyName: 'Orange Travels',
// // //                       badgeText: 'NON-AC',
// // //                       badgeColor: Color(0xFFFFF3E0),
// // //                       badgeTextColor: Color(0xFFFF9800),
// // //                       fromCity: 'Hyderabad',
// // //                       toCity: 'Kalvakole',
// // //                       departureTime: '08:00',
// // //                       arrivalTime: '11:30',
// // //                       price: '₹ 200',
// // //                       seats: 'Seat : L11',
// // //                     ),

// // //                     const SizedBox(height: 20),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildBusTicketCard({
// // //     required String companyName,
// // //     required String badgeText,
// // //     required Color badgeColor,
// // //     required Color badgeTextColor,
// // //     required String fromCity,
// // //     required String toCity,
// // //     required String departureTime,
// // //     required String arrivalTime,
// // //     required String price,
// // //     required String seats,
// // //   }) {
// // //     return Container(
// // //       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// // //       child: ClipPath(
// // //         clipper: TicketClipper(),
// // //         child: Container(
// // //           decoration: BoxDecoration(
// // //             color: Colors.white,
// // //             boxShadow: [
// // //               BoxShadow(
// // //                 color: Colors.grey.withOpacity(0.1),
// // //                 spreadRadius: 1,
// // //                 blurRadius: 6,
// // //                 offset: const Offset(0, 2),
// // //               ),
// // //             ],
// // //           ),
// // //           child: Padding(
// // //             padding: const EdgeInsets.all(16.0),
// // //             child: Column(
// // //               children: [
// // //                 // Company name and badge row
// // //                 Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                   children: [
// // //                     Row(
// // //                       children: [
// // //                         Icon(
// // //                           Icons.directions_bus,
// // //                           size: 20,
// // //                           color: Colors.black87,
// // //                         ),
// // //                         SizedBox(width: 8),
// // //                         Text(
// // //                           companyName,
// // //                           style: TextStyle(
// // //                             fontSize: 16,
// // //                             fontWeight: FontWeight.w600,
// // //                             color: Colors.black87,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     Container(
// // //                       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
// // //                       decoration: BoxDecoration(
// // //                         color: badgeColor,
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       child: Text(
// // //                         badgeText,
// // //                         style: TextStyle(
// // //                           color: badgeTextColor,
// // //                           fontSize: 12,
// // //                           fontWeight: FontWeight.w500,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),

// // //                 const SizedBox(height: 16),

// // //                 Row(
// // //                   children: [
// // //                     // Departure
// // //                     Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           fromCity,
// // //                           style: TextStyle(
// // //                             color: Colors.grey[600],
// // //                             fontSize: 12,
// // //                           ),
// // //                         ),
// // //                         Text(
// // //                           departureTime,
// // //                           style: TextStyle(
// // //                             fontSize: 18,
// // //                             fontWeight: FontWeight.bold,
// // //                             color: Colors.black87,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),

// // //                     // Route line with bus icon
// // //                     Expanded(
// // //                       child: Container(
// // //                         margin: const EdgeInsets.symmetric(horizontal: 16),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               width: 8,
// // //                               height: 8,
// // //                               decoration: BoxDecoration(
// // //                                 color: Color(0xFF4A90E2),
// // //                                 shape: BoxShape.circle,
// // //                               ),
// // //                             ),
// // //                             Expanded(
// // //                               child: Container(
// // //                                 height: 2,
// // //                                 decoration: BoxDecoration(
// // //                                   color: Color(0xFF4A90E2),
// // //                                 ),
// // //                                 child: Row(
// // //                                   mainAxisAlignment: MainAxisAlignment.center,
// // //                                   children: [
// // //                                     Container(
// // //                                       padding: EdgeInsets.all(4),
// // //                                       decoration: BoxDecoration(
// // //                                         color: Color(0xFF4A90E2),
// // //                                         shape: BoxShape.circle,
// // //                                       ),
// // //                                       child: Icon(
// // //                                         Icons.directions_bus,
// // //                                         color: Colors.white,
// // //                                         size: 16,
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             Container(
// // //                               width: 8,
// // //                               height: 8,
// // //                               decoration: BoxDecoration(
// // //                                 color: Color(0xFF4A90E2),
// // //                                 shape: BoxShape.circle,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),

// // //                     // Arrival
// // //                     Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.end,
// // //                       children: [
// // //                         Text(
// // //                           toCity,
// // //                           style: TextStyle(
// // //                             color: Colors.grey[600],
// // //                             fontSize: 12,
// // //                           ),
// // //                         ),
// // //                         Text(
// // //                           arrivalTime,
// // //                           style: TextStyle(
// // //                             fontSize: 18,
// // //                             fontWeight: FontWeight.bold,
// // //                             color: Colors.black87,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ],
// // //                 ),

// // //                 const SizedBox(height: 16),

// // //                 // Divider
// // //                 Container(height: 1, color: Colors.grey[200]),

// // //                 const SizedBox(height: 12),

// // //                 // Price and select row
// // //                 Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                   children: [
// // //                     Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           price,
// // //                           style: TextStyle(
// // //                             fontSize: 20,
// // //                             fontWeight: FontWeight.bold,
// // //                             color: Colors.black87,
// // //                           ),
// // //                         ),
// // //                         Text(
// // //                           seats,
// // //                           style: TextStyle(
// // //                             color: Color(0xFF4A90E2),
// // //                             fontSize: 12,
// // //                             fontWeight: FontWeight.w500,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     Row(
// // //                       children: [
// // //                         Text(
// // //                           'Select',
// // //                           style: TextStyle(
// // //                             color: Color(0xFF4A90E2),
// // //                             fontSize: 16,
// // //                             fontWeight: FontWeight.w600,
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 4),
// // //                         Icon(
// // //                           Icons.arrow_forward_ios,
// // //                           color: Color(0xFF4A90E2),
// // //                           size: 14,
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }












// // // import 'package:backup_ticket/provider/selltickets/sell_bus_ticket_provider.dart';
// // // import 'package:backup_ticket/model/bus_ticket_model.dart';
// // // import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
// // // import 'package:backup_ticket/views/notifications/notification_screen.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:provider/provider.dart';
// // // import 'package:intl/intl.dart';

// // // class BusScreen extends StatefulWidget {
// // //   const BusScreen({super.key});

// // //   @override
// // //   State<BusScreen> createState() => _BusScreenState();
// // // }

// // // class _BusScreenState extends State<BusScreen> {
// // //   DateTime? _selectedDate;
// // //   String _searchQuery = '';
// // //   final TextEditingController _searchController = TextEditingController();

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     // Fetch available tickets when screen loads
// // //     WidgetsBinding.instance.addPostFrameCallback((_) {
// // //       _loadTickets();
// // //     });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _searchController.dispose();
// // //     super.dispose();
// // //   }

// // //   // Future<void> _loadTickets() async {
// // //   //   final provider = Provider.of<BusTicketProvider>(context, listen: false);
// // //   //   try {
// // //   //     await provider.fetchAvailableTickets(travelDate: _selectedDate);
// // //   //   } catch (e) {
// // //   //     if (mounted) {
// // //   //       ScaffoldMessenger.of(context).showSnackBar(
// // //   //         SnackBar(
// // //   //           content: Text('Error loading tickets: $e'),
// // //   //           backgroundColor: Colors.red,
// // //   //         ),
// // //   //       );
// // //   //     }
// // //   //   }
// // //   // }



// // //   Future<void> _loadTickets() async {
// // //   final provider = Provider.of<BusTicketProvider>(context, listen: false);
// // //   try {
// // //     await provider.fetchMyTickets(); 
// // //   } catch (e) {
// // //     if (mounted) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(
// // //           content: Text('Error loading tickets: $e'),
// // //           backgroundColor: Colors.red,
// // //         ),
// // //       );
// // //     }
// // //   }
// // // }
// // //   Future<void> _selectDate() async {
// // //     final DateTime? picked = await showDatePicker(
// // //       context: context,
// // //       initialDate: _selectedDate ?? DateTime.now(),
// // //       firstDate: DateTime.now(),
// // //       lastDate: DateTime.now().add(const Duration(days: 365)),
// // //       builder: (context, child) {
// // //         return Theme(
// // //           data: Theme.of(context).copyWith(
// // //             colorScheme: const ColorScheme.light(
// // //               primary: Color(0xFF1976D2),
// // //               onPrimary: Colors.white,
// // //               onSurface: Colors.black,
// // //             ),
// // //           ),
// // //           child: child!,
// // //         );
// // //       },
// // //     );

// // //     if (picked != null && picked != _selectedDate) {
// // //       setState(() {
// // //         _selectedDate = picked;
// // //       });
// // //       _loadTickets();
// // //     }
// // //   }

// // //   void _clearFilters() {
// // //     setState(() {
// // //       _selectedDate = null;
// // //       _searchQuery = '';
// // //       _searchController.clear();
// // //     });
// // //     _loadTickets();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: PreferredSize(
// // //         preferredSize: const Size.fromHeight(90),
// // //         child: AppBar(
// // //           automaticallyImplyLeading: false,
// // //           elevation: 0,
// // //           flexibleSpace: ClipRRect(
// // //             borderRadius: const BorderRadius.only(
// // //               bottomLeft: Radius.circular(25),
// // //               bottomRight: Radius.circular(25),
// // //             ),
// // //             child: Container(
// // //               decoration: const BoxDecoration(
// // //                 gradient: LinearGradient(
// // //                   colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
// // //                   begin: Alignment.topLeft,
// // //                   end: Alignment.bottomRight,
// // //                 ),
// // //               ),
// // //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
// // //               child: SafeArea(
// // //                 child: Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                   children: [
// // //                     // Left side (location)
// // //                     Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       mainAxisAlignment: MainAxisAlignment.center,
// // //                       children: [
// // //                         Row(
// // //                           children: const [
// // //                             Icon(Icons.send, color: Colors.white, size: 18),
// // //                             SizedBox(width: 5),
// // //                             Text(
// // //                               "Hyderabad, Telangana..",
// // //                               style: TextStyle(
// // //                                 color: Colors.white,
// // //                                 fontSize: 16,
// // //                                 fontWeight: FontWeight.w600,
// // //                               ),
// // //                             ),
// // //                             Icon(
// // //                               Icons.keyboard_arrow_down,
// // //                               color: Colors.white,
// // //                               size: 20,
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         const SizedBox(height: 2),
// // //                         const Text(
// // //                           "       Hyderabad, Telangana, India",
// // //                           style: TextStyle(color: Colors.white, fontSize: 12),
// // //                         ),
// // //                       ],
// // //                     ),

// // //                     // Right side (notification)
// // //                     Container(
// // //                       padding: const EdgeInsets.all(8),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.white,
// // //                         shape: BoxShape.circle,
// // //                         boxShadow: [
// // //                           BoxShadow(
// // //                             color: Colors.black26,
// // //                             blurRadius: 4,
// // //                             offset: Offset(0, 2),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       child: GestureDetector(
// // //                         onTap: () {
// // //                           Navigator.push(
// // //                             context,
// // //                             MaterialPageRoute(
// // //                               builder: (context) => NotificationScreen(),
// // //                             ),
// // //                           );
// // //                         },
// // //                         child: const Icon(
// // //                           Icons.notifications_none,
// // //                           color: Colors.black87,
// // //                           size: 22,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //       backgroundColor: const Color(0xFFF5F5F5),
// // //       body: SafeArea(
// // //         child: Column(
// // //           children: [
// // //             // Search and Filter Row
// // //             Row(
// // //               children: [
// // //                 Expanded(
// // //                   child: Container(
// // //                     margin: const EdgeInsets.all(16.0),
// // //                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // //                     height: 50,
// // //                     decoration: BoxDecoration(
// // //                       border: Border.all(color: Colors.grey.shade300),
// // //                       color: Colors.white,
// // //                       borderRadius: BorderRadius.circular(25),
// // //                       boxShadow: [
// // //                         BoxShadow(
// // //                           color: Colors.grey.withOpacity(0.1),
// // //                           spreadRadius: 1,
// // //                           blurRadius: 10,
// // //                           offset: const Offset(0, 2),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     child: TextField(
// // //                       controller: _searchController,
// // //                       decoration: const InputDecoration(
// // //                         icon: Icon(Icons.search, color: Colors.grey, size: 20),
// // //                         hintText: 'Search buses, routes...',
// // //                         hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
// // //                         border: InputBorder.none,
// // //                       ),
// // //                       onChanged: (value) {
// // //                         setState(() {
// // //                           _searchQuery = value.toLowerCase();
// // //                         });
// // //                       },
// // //                     ),
// // //                   ),
// // //                 ),

// // //                 // Date Filter Button
// // //                 GestureDetector(
// // //                   onTap: _selectDate,
// // //                   child: Container(
// // //                     margin: const EdgeInsets.only(right: 16.0),
// // //                     child: CircleAvatar(
// // //                       radius: 25,
// // //                       backgroundColor: _selectedDate != null
// // //                           ? const Color(0xFF1976D2)
// // //                           : const Color(0xFF4A90E2),
// // //                       child: const Icon(
// // //                         Icons.calendar_month,
// // //                         color: Colors.white,
// // //                         size: 20,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),

// // //             // Date Filter Chip (if date selected)
// // //             if (_selectedDate != null)
// // //               Padding(
// // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // //                 child: Row(
// // //                   children: [
// // //                     Chip(
// // //                       label: Text(
// // //                         DateFormat('MMM dd, yyyy').format(_selectedDate!),
// // //                         style: const TextStyle(fontSize: 12),
// // //                       ),
// // //                       deleteIcon: const Icon(Icons.close, size: 18),
// // //                       onDeleted: () {
// // //                         setState(() {
// // //                           _selectedDate = null;
// // //                         });
// // //                         _loadTickets();
// // //                       },
// // //                       backgroundColor: const Color(0xFFE3F2FD),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),

// // //             // Available Nearby Bus Tickets Section
// // //             Padding(
// // //               padding: const EdgeInsets.all(16.0),
// // //               child: Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   const Text(
// // //                     'Available Nearby Bus Tickets',
// // //                     style: TextStyle(
// // //                       fontSize: 18,
// // //                       fontWeight: FontWeight.bold,
// // //                       color: Colors.black87,
// // //                     ),
// // //                   ),
// // //                   IconButton(
// // //                     icon: const Icon(Icons.refresh, color: Color(0xFF1976D2)),
// // //                     onPressed: _loadTickets,
// // //                     tooltip: 'Refresh',
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),

// // //             // Bus Ticket Cards List
// // //             Expanded(
// // //               child: Consumer<BusTicketProvider>(
// // //                 builder: (context, provider, child) {
// // //                   if (provider.isLoading) {
// // //                     return const Center(
// // //                       child: CircularProgressIndicator(
// // //                         color: Color(0xFF1976D2),
// // //                       ),
// // //                     );
// // //                   }

// // //                   // Filter tickets based on search query
// // //                   List<BusTicket> filteredTickets = provider.tickets;
                  
// // //                   if (_searchQuery.isNotEmpty) {
// // //                     filteredTickets = filteredTickets.where((ticket) {
// // //                       return ticket.busName.toLowerCase().contains(_searchQuery) ||
// // //                           ticket.pickupPoint.toLowerCase().contains(_searchQuery) ||
// // //                           ticket.dropPoint.toLowerCase().contains(_searchQuery) ||
// // //                           ticket.ticketType.toLowerCase().contains(_searchQuery);
// // //                     }).toList();
// // //                   }

// // //                   if (filteredTickets.isEmpty) {
// // //                     return Center(
// // //                       child: Column(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Icon(
// // //                             Icons.confirmation_number_outlined,
// // //                             size: 80,
// // //                             color: Colors.grey[300],
// // //                           ),
// // //                           const SizedBox(height: 16),
// // //                           Text(
// // //                             _searchQuery.isNotEmpty
// // //                                 ? 'No tickets found matching "$_searchQuery"'
// // //                                 : _selectedDate != null
// // //                                     ? 'No tickets available for selected date'
// // //                                     : 'No tickets available',
// // //                             style: TextStyle(
// // //                               fontSize: 16,
// // //                               color: Colors.grey[600],
// // //                             ),
// // //                             textAlign: TextAlign.center,
// // //                           ),
// // //                           const SizedBox(height: 8),
// // //                           if (_selectedDate != null || _searchQuery.isNotEmpty)
// // //                             TextButton.icon(
// // //                               onPressed: _clearFilters,
// // //                               icon: const Icon(Icons.clear_all),
// // //                               label: const Text('Clear Filters'),
// // //                               style: TextButton.styleFrom(
// // //                                 foregroundColor: const Color(0xFF1976D2),
// // //                               ),
// // //                             ),
// // //                         ],
// // //                       ),
// // //                     );
// // //                   }

// // //                   return RefreshIndicator(
// // //                     onRefresh: _loadTickets,
// // //                     color: const Color(0xFF1976D2),
// // //                     child: ListView.builder(
// // //                       padding: const EdgeInsets.only(bottom: 20),
// // //                       itemCount: filteredTickets.length,
// // //                       itemBuilder: (context, index) {
// // //                         final ticket = filteredTickets[index];
// // //                         return GestureDetector(
// // //                           onTap: () {
// // //                             Navigator.push(
// // //                               context,
// // //                               MaterialPageRoute(
// // //                                 builder: (context) => BusDetailsScreen(
// // //                                   ticket: ticket,
// // //                                 ),
// // //                               ),
// // //                             );
// // //                           },
// // //                           child: _buildBusTicketCard(ticket),
// // //                         );
// // //                       },
// // //                     ),
// // //                   );
// // //                 },
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildBusTicketCard(BusTicket ticket) {
// // //     // Determine badge based on ticket type
// // //     final isAC = ticket.ticketType.toLowerCase().contains('ac') &&
// // //         !ticket.ticketType.toLowerCase().contains('non');
// // //     final badgeText = isAC ? 'AC' : 'NON-AC';
// // //     final badgeColor = isAC ? const Color(0xFFE3F2FD) : const Color(0xFFFFF3E0);
// // //     final badgeTextColor = isAC ? const Color(0xFF1976D2) : const Color(0xFFFF9800);

// // //     // Format times
// // //     final departureTime = DateFormat('HH:mm').format(ticket.createdAt);
// // //     final arrivalTime = DateFormat('HH:mm').format(ticket.dateOfJourney);
// // //     final dateOfJourney = DateFormat('MMM dd, yyyy').format(ticket.dateOfJourney);

// // //     return Container(
// // //       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// // //       child: ClipPath(
// // //         clipper: TicketClipper(),
// // //         child: Container(
// // //           decoration: BoxDecoration(
// // //             color: Colors.white,
// // //             boxShadow: [
// // //               BoxShadow(
// // //                 color: Colors.grey.withOpacity(0.15),
// // //                 spreadRadius: 1,
// // //                 blurRadius: 8,
// // //                 offset: const Offset(0, 2),
// // //               ),
// // //             ],
// // //           ),
// // //           child: Padding(
// // //             padding: const EdgeInsets.all(16.0),
// // //             child: Column(
// // //               children: [
// // //                 // Company name and badge row
// // //                 Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                   children: [
// // //                     Expanded(
// // //                       child: Row(
// // //                         children: [
// // //                           const Icon(
// // //                             Icons.directions_bus,
// // //                             size: 20,
// // //                             color: Colors.black87,
// // //                           ),
// // //                           const SizedBox(width: 8),
// // //                           Expanded(
// // //                             child: Text(
// // //                               ticket.busName,
// // //                               style: const TextStyle(
// // //                                 fontSize: 16,
// // //                                 fontWeight: FontWeight.w600,
// // //                                 color: Colors.black87,
// // //                               ),
// // //                               overflow: TextOverflow.ellipsis,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                     Container(
// // //                       padding: const EdgeInsets.symmetric(
// // //                           horizontal: 8, vertical: 4),
// // //                       decoration: BoxDecoration(
// // //                         color: badgeColor,
// // //                         borderRadius: BorderRadius.circular(12),
// // //                       ),
// // //                       child: Text(
// // //                         badgeText,
// // //                         style: TextStyle(
// // //                           color: badgeTextColor,
// // //                           fontSize: 12,
// // //                           fontWeight: FontWeight.w500,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),

// // //                 const SizedBox(height: 4),

// // //                 // Date of Journey
// // //                 Row(
// // //                   children: [
// // //                     Icon(
// // //                       Icons.calendar_today,
// // //                       size: 12,
// // //                       color: Colors.grey[600],
// // //                     ),
// // //                     const SizedBox(width: 4),
// // //                     Text(
// // //                       dateOfJourney,
// // //                       style: TextStyle(
// // //                         fontSize: 12,
// // //                         color: Colors.grey[600],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),

// // //                 const SizedBox(height: 16),

// // //                 Row(
// // //                   children: [
// // //                     // Departure
// // //                     Expanded(
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             ticket.pickupPoint,
// // //                             style: TextStyle(
// // //                               color: Colors.grey[600],
// // //                               fontSize: 12,
// // //                             ),
// // //                             overflow: TextOverflow.ellipsis,
// // //                           ),
// // //                           Text(
// // //                             departureTime,
// // //                             style: const TextStyle(
// // //                               fontSize: 18,
// // //                               fontWeight: FontWeight.bold,
// // //                               color: Colors.black87,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),

// // //                     // Route line with bus icon
// // //                     Expanded(
// // //                       child: Container(
// // //                         margin: const EdgeInsets.symmetric(horizontal: 8),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               width: 8,
// // //                               height: 8,
// // //                               decoration: const BoxDecoration(
// // //                                 color: Color(0xFF4A90E2),
// // //                                 shape: BoxShape.circle,
// // //                               ),
// // //                             ),
// // //                             Expanded(
// // //                               child: Container(
// // //                                 height: 2,
// // //                                 decoration: const BoxDecoration(
// // //                                   color: Color(0xFF4A90E2),
// // //                                 ),
// // //                                 child: Row(
// // //                                   mainAxisAlignment: MainAxisAlignment.center,
// // //                                   children: [
// // //                                     Container(
// // //                                       padding: const EdgeInsets.all(4),
// // //                                       decoration: const BoxDecoration(
// // //                                         color: Color(0xFF4A90E2),
// // //                                         shape: BoxShape.circle,
// // //                                       ),
// // //                                       child: const Icon(
// // //                                         Icons.directions_bus,
// // //                                         color: Colors.white,
// // //                                         size: 16,
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             Container(
// // //                               width: 8,
// // //                               height: 8,
// // //                               decoration: const BoxDecoration(
// // //                                 color: Color(0xFF4A90E2),
// // //                                 shape: BoxShape.circle,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),

// // //                     // Arrival
// // //                     Expanded(
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.end,
// // //                         children: [
// // //                           Text(
// // //                             ticket.dropPoint,
// // //                             style: TextStyle(
// // //                               color: Colors.grey[600],
// // //                               fontSize: 12,
// // //                             ),
// // //                             overflow: TextOverflow.ellipsis,
// // //                             textAlign: TextAlign.right,
// // //                           ),
// // //                           Text(
// // //                             arrivalTime,
// // //                             style: const TextStyle(
// // //                               fontSize: 18,
// // //                               fontWeight: FontWeight.bold,
// // //                               color: Colors.black87,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),

// // //                 const SizedBox(height: 16),

// // //                 // Divider
// // //                 Container(height: 1, color: Colors.grey[200]),

// // //                 const SizedBox(height: 12),

// // //                 // Price and select row
// // //                 Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                   children: [
// // //                     Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           '₹ ${ticket.totalPrice.toStringAsFixed(0)}',
// // //                           style: const TextStyle(
// // //                             fontSize: 20,
// // //                             fontWeight: FontWeight.bold,
// // //                             color: Colors.black87,
// // //                           ),
// // //                         ),
// // //                         Text(
// // //                           'per ticket',
// // //                           style: TextStyle(
// // //                             color: Colors.grey[600],
// // //                             fontSize: 11,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     const Row(
// // //                       children: [
// // //                         Text(
// // //                           'Select',
// // //                           style: TextStyle(
// // //                             color: Color(0xFF4A90E2),
// // //                             fontSize: 16,
// // //                             fontWeight: FontWeight.w600,
// // //                           ),
// // //                         ),
// // //                         SizedBox(width: 4),
// // //                         Icon(
// // //                           Icons.arrow_forward_ios,
// // //                           color: Color(0xFF4A90E2),
// // //                           size: 14,
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // Custom Clipper for ticket shape
// // // class TicketClipper extends CustomClipper<Path> {
// // //   @override
// // //   Path getClip(Size size) {
// // //     Path path = Path();
// // //     double circleRadius = 12;

// // //     path.lineTo(0, size.height - circleRadius);
// // //     path.arcToPoint(
// // //       Offset(0, size.height),
// // //       radius: Radius.circular(circleRadius),
// // //       clockwise: false,
// // //     );

// // //     path.lineTo(size.width, size.height);
// // //     path.arcToPoint(
// // //       Offset(size.width, size.height - circleRadius),
// // //       radius: Radius.circular(circleRadius),
// // //       clockwise: false,
// // //     );

// // //     path.lineTo(size.width, 0);
// // //     path.close();

// // //     return path;
// // //   }

// // //   @override
// // //   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// // // }















// // import 'package:backup_ticket/provider/selltickets/sell_bus_ticket_provider.dart';
// // import 'package:backup_ticket/model/bus_ticket_model.dart';
// // import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
// // import 'package:backup_ticket/views/notifications/notification_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:intl/intl.dart';

// // class BusScreen extends StatefulWidget {
// //   const BusScreen({super.key});

// //   @override
// //   State<BusScreen> createState() => _BusScreenState();
// // }

// // class _BusScreenState extends State<BusScreen> {
// //   DateTime? _selectedDate;
// //   String _searchQuery = '';
// //   String _fromLocation = '';
// //   String _toLocation = '';
// //   final TextEditingController _searchController = TextEditingController();
// //   final TextEditingController _fromController = TextEditingController();
// //   final TextEditingController _toController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     WidgetsBinding.instance.addPostFrameCallback((_) {
// //       _loadTickets();
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _searchController.dispose();
// //     _fromController.dispose();
// //     _toController.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _loadTickets() async {
// //     final provider = Provider.of<BusTicketProvider>(context, listen: false);
// //     try {
// //       await provider.fetchMyTickets();
// //     } catch (e) {
// //       if (mounted) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(
// //             content: Text('Error loading tickets: $e'),
// //             backgroundColor: Colors.red,
// //           ),
// //         );
// //       }
// //     }
// //   }

// //   Future<void> _selectDate() async {
// //     final DateTime? picked = await showDatePicker(
// //       context: context,
// //       initialDate: _selectedDate ?? DateTime.now(),
// //       firstDate: DateTime.now(),
// //       lastDate: DateTime.now().add(const Duration(days: 365)),
// //       builder: (context, child) {
// //         return Theme(
// //           data: Theme.of(context).copyWith(
// //             colorScheme: const ColorScheme.light(
// //               primary: Color(0xFF1976D2),
// //               onPrimary: Colors.white,
// //               onSurface: Colors.black,
// //             ),
// //           ),
// //           child: child!,
// //         );
// //       },
// //     );

// //     if (picked != null && picked != _selectedDate) {
// //       setState(() {
// //         _selectedDate = picked;
// //       });
// //       _loadTickets();
// //     }
// //   }

// //   void _clearFilters() {
// //     setState(() {
// //       _selectedDate = null;
// //       _searchQuery = '';
// //       _fromLocation = '';
// //       _toLocation = '';
// //       _searchController.clear();
// //       _fromController.clear();
// //       _toController.clear();
// //     });
// //     _loadTickets();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: PreferredSize(
// //         preferredSize: const Size.fromHeight(90),
// //         child: AppBar(
// //           automaticallyImplyLeading: false,
// //           elevation: 0,
// //           flexibleSpace: ClipRRect(
// //             borderRadius: const BorderRadius.only(
// //               bottomLeft: Radius.circular(25),
// //               bottomRight: Radius.circular(25),
// //             ),
// //             child: Container(
// //               decoration: const BoxDecoration(
// //                 gradient: LinearGradient(
// //                   colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
// //                   begin: Alignment.topLeft,
// //                   end: Alignment.bottomRight,
// //                 ),
// //               ),
// //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
// //               child: SafeArea(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Row(
// //                           children: const [
// //                             Icon(Icons.send, color: Colors.white, size: 18),
// //                             SizedBox(width: 5),
// //                             Text(
// //                               "Hyderabad, Telangana..",
// //                               style: TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: 16,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                             Icon(
// //                               Icons.keyboard_arrow_down,
// //                               color: Colors.white,
// //                               size: 20,
// //                             ),
// //                           ],
// //                         ),
// //                         const SizedBox(height: 2),
// //                         const Text(
// //                           "       Hyderabad, Telangana, India",
// //                           style: TextStyle(color: Colors.white, fontSize: 12),
// //                         ),
// //                       ],
// //                     ),
// //                     Container(
// //                       padding: const EdgeInsets.all(8),
// //                       decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         shape: BoxShape.circle,
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.black26,
// //                             blurRadius: 4,
// //                             offset: Offset(0, 2),
// //                           ),
// //                         ],
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {
// //                           Navigator.push(
// //                             context,
// //                             MaterialPageRoute(
// //                               builder: (context) => NotificationScreen(),
// //                             ),
// //                           );
// //                         },
// //                         child: const Icon(
// //                           Icons.notifications_none,
// //                           color: Colors.black87,
// //                           size: 22,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //       backgroundColor: const Color(0xFFF5F5F5),
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             // From and To Search Fields
// //             Container(
// //               margin: const EdgeInsets.all(16.0),
// //               padding: const EdgeInsets.all(16.0),
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(20),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.grey.withOpacity(0.15),
// //                     spreadRadius: 1,
// //                     blurRadius: 10,
// //                     offset: const Offset(0, 2),
// //                   ),
// //                 ],
// //               ),
// //               child: Column(
// //                 children: [
// //                   // From Field
// //                   Container(
// //                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey.shade300),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     child: Row(
// //                       children: [
// //                         const Icon(Icons.trip_origin, 
// //                           color: Color(0xFF1976D2), size: 20),
// //                         const SizedBox(width: 12),
// //                         Expanded(
// //                           child: TextField(
// //                             controller: _fromController,
// //                             decoration: const InputDecoration(
// //                               hintText: 'From',
// //                               hintStyle: TextStyle(
// //                                 color: Colors.grey, fontSize: 16),
// //                               border: InputBorder.none,
// //                             ),
// //                             onChanged: (value) {
// //                               setState(() {
// //                                 _fromLocation = value.toLowerCase();
// //                               });
// //                             },
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
                  
// //                   const SizedBox(height: 12),
                  
// //                   // To Field
// //                   Container(
// //                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey.shade300),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     child: Row(
// //                       children: [
// //                         const Icon(Icons.location_on, 
// //                           color: Colors.red, size: 20),
// //                         const SizedBox(width: 12),
// //                         Expanded(
// //                           child: TextField(
// //                             controller: _toController,
// //                             decoration: const InputDecoration(
// //                               hintText: 'To',
// //                               hintStyle: TextStyle(
// //                                 color: Colors.grey, fontSize: 16),
// //                               border: InputBorder.none,
// //                             ),
// //                             onChanged: (value) {
// //                               setState(() {
// //                                 _toLocation = value.toLowerCase();
// //                               });
// //                             },
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
                  
// //                   const SizedBox(height: 12),
                  
// //                   // Date and Search Button Row
// //                   Row(
// //                     children: [
// //                       // Date Selector
// //                       Expanded(
// //                         child: GestureDetector(
// //                           onTap: _selectDate,
// //                           child: Container(
// //                             padding: const EdgeInsets.symmetric(
// //                               horizontal: 12, vertical: 14),
// //                             decoration: BoxDecoration(
// //                               border: Border.all(color: Colors.grey.shade300),
// //                               borderRadius: BorderRadius.circular(12),
// //                             ),
// //                             child: Row(
// //                               children: [
// //                                 const Icon(Icons.calendar_today, 
// //                                   color: Color(0xFF1976D2), size: 18),
// //                                 const SizedBox(width: 12),
// //                                 Text(
// //                                   _selectedDate != null
// //                                       ? DateFormat('dd MMM, yyyy')
// //                                           .format(_selectedDate!)
// //                                       : 'Date of Journey',
// //                                   style: TextStyle(
// //                                     color: _selectedDate != null
// //                                         ? Colors.black87
// //                                         : Colors.grey,
// //                                     fontSize: 14,
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       ),
                      
// //                       const SizedBox(width: 12),
                      
// //                       // Search Button
// //                       Container(
// //                         decoration: BoxDecoration(
// //                           gradient: const LinearGradient(
// //                             colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
// //                           ),
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                         child: Material(
// //                           color: Colors.transparent,
// //                           child: InkWell(
// //                             onTap: _loadTickets,
// //                             borderRadius: BorderRadius.circular(12),
// //                             child: Container(
// //                               padding: const EdgeInsets.symmetric(
// //                                 horizontal: 20, vertical: 14),
// //                               child: const Icon(
// //                                 Icons.search,
// //                                 color: Colors.white,
// //                                 size: 24,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // General Search Bar
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     margin: const EdgeInsets.symmetric(horizontal: 16.0),
// //                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                     height: 50,
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey.shade300),
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.circular(25),
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.grey.withOpacity(0.1),
// //                           spreadRadius: 1,
// //                           blurRadius: 10,
// //                           offset: const Offset(0, 2),
// //                         ),
// //                       ],
// //                     ),
// //                     child: TextField(
// //                       controller: _searchController,
// //                       decoration: const InputDecoration(
// //                         icon: Icon(Icons.search, color: Colors.grey, size: 20),
// //                         hintText: 'Search buses, routes...',
// //                         hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
// //                         border: InputBorder.none,
// //                       ),
// //                       onChanged: (value) {
// //                         setState(() {
// //                           _searchQuery = value.toLowerCase();
// //                         });
// //                       },
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),

// //             // Active Filters Chips
// //             if (_selectedDate != null || 
// //                 _fromLocation.isNotEmpty || 
// //                 _toLocation.isNotEmpty)
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(
// //                   horizontal: 16.0, vertical: 8.0),
// //                 child: SingleChildScrollView(
// //                   scrollDirection: Axis.horizontal,
// //                   child: Row(
// //                     children: [
// //                       if (_fromLocation.isNotEmpty)
// //                         Padding(
// //                           padding: const EdgeInsets.only(right: 8.0),
// //                           child: Chip(
// //                             label: Text(
// //                               'From: $_fromLocation',
// //                               style: const TextStyle(fontSize: 12),
// //                             ),
// //                             deleteIcon: const Icon(Icons.close, size: 18),
// //                             onDeleted: () {
// //                               setState(() {
// //                                 _fromLocation = '';
// //                                 _fromController.clear();
// //                               });
// //                             },
// //                             backgroundColor: const Color(0xFFE3F2FD),
// //                           ),
// //                         ),
// //                       if (_toLocation.isNotEmpty)
// //                         Padding(
// //                           padding: const EdgeInsets.only(right: 8.0),
// //                           child: Chip(
// //                             label: Text(
// //                               'To: $_toLocation',
// //                               style: const TextStyle(fontSize: 12),
// //                             ),
// //                             deleteIcon: const Icon(Icons.close, size: 18),
// //                             onDeleted: () {
// //                               setState(() {
// //                                 _toLocation = '';
// //                                 _toController.clear();
// //                               });
// //                             },
// //                             backgroundColor: const Color(0xFFFFE0E0),
// //                           ),
// //                         ),
// //                       if (_selectedDate != null)
// //                         Padding(
// //                           padding: const EdgeInsets.only(right: 8.0),
// //                           child: Chip(
// //                             label: Text(
// //                               DateFormat('MMM dd, yyyy').format(_selectedDate!),
// //                               style: const TextStyle(fontSize: 12),
// //                             ),
// //                             deleteIcon: const Icon(Icons.close, size: 18),
// //                             onDeleted: () {
// //                               setState(() {
// //                                 _selectedDate = null;
// //                               });
// //                             },
// //                             backgroundColor: const Color(0xFFFFF3E0),
// //                           ),
// //                         ),
// //                       TextButton.icon(
// //                         onPressed: _clearFilters,
// //                         icon: const Icon(Icons.clear_all, size: 18),
// //                         label: const Text('Clear All'),
// //                         style: TextButton.styleFrom(
// //                           foregroundColor: const Color(0xFF1976D2),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),

// //             // Available Nearby Bus Tickets Section
// //             Padding(
// //               padding: const EdgeInsets.all(16.0),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   const Text(
// //                     'Available Nearby Bus Tickets',
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black87,
// //                     ),
// //                   ),
// //                   IconButton(
// //                     icon: const Icon(Icons.refresh, color: Color(0xFF1976D2)),
// //                     onPressed: _loadTickets,
// //                     tooltip: 'Refresh',
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // Bus Ticket Cards List
// //             Expanded(
// //               child: Consumer<BusTicketProvider>(
// //                 builder: (context, provider, child) {
// //                   if (provider.isLoading) {
// //                     return const Center(
// //                       child: CircularProgressIndicator(
// //                         color: Color(0xFF1976D2),
// //                       ),
// //                     );
// //                   }

// //                   // Filter tickets based on all search criteria
// //                   List<BusTicket> filteredTickets = provider.tickets;

// //                   if (_fromLocation.isNotEmpty) {
// //                     filteredTickets = filteredTickets.where((ticket) {
// //                       return ticket.pickupPoint
// //                           .toLowerCase()
// //                           .contains(_fromLocation);
// //                     }).toList();
// //                   }

// //                   if (_toLocation.isNotEmpty) {
// //                     filteredTickets = filteredTickets.where((ticket) {
// //                       return ticket.dropPoint
// //                           .toLowerCase()
// //                           .contains(_toLocation);
// //                     }).toList();
// //                   }

// //                   if (_searchQuery.isNotEmpty) {
// //                     filteredTickets = filteredTickets.where((ticket) {
// //                       return ticket.busName
// //                               .toLowerCase()
// //                               .contains(_searchQuery) ||
// //                           ticket.pickupPoint
// //                               .toLowerCase()
// //                               .contains(_searchQuery) ||
// //                           ticket.dropPoint
// //                               .toLowerCase()
// //                               .contains(_searchQuery) ||
// //                           ticket.ticketType
// //                               .toLowerCase()
// //                               .contains(_searchQuery);
// //                     }).toList();
// //                   }

// //                   if (filteredTickets.isEmpty) {
// //                     return Center(
// //                       child: Column(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Icon(
// //                             Icons.confirmation_number_outlined,
// //                             size: 80,
// //                             color: Colors.grey[300],
// //                           ),
// //                           const SizedBox(height: 16),
// //                           Text(
// //                             _searchQuery.isNotEmpty ||
// //                                     _fromLocation.isNotEmpty ||
// //                                     _toLocation.isNotEmpty
// //                                 ? 'No tickets found matching your search'
// //                                 : _selectedDate != null
// //                                     ? 'No tickets available for selected date'
// //                                     : 'No tickets available',
// //                             style: TextStyle(
// //                               fontSize: 16,
// //                               color: Colors.grey[600],
// //                             ),
// //                             textAlign: TextAlign.center,
// //                           ),
// //                           const SizedBox(height: 8),
// //                           if (_selectedDate != null ||
// //                               _searchQuery.isNotEmpty ||
// //                               _fromLocation.isNotEmpty ||
// //                               _toLocation.isNotEmpty)
// //                             TextButton.icon(
// //                               onPressed: _clearFilters,
// //                               icon: const Icon(Icons.clear_all),
// //                               label: const Text('Clear Filters'),
// //                               style: TextButton.styleFrom(
// //                                 foregroundColor: const Color(0xFF1976D2),
// //                               ),
// //                             ),
// //                         ],
// //                       ),
// //                     );
// //                   }

// //                   return RefreshIndicator(
// //                     onRefresh: _loadTickets,
// //                     color: const Color(0xFF1976D2),
// //                     child: ListView.builder(
// //                       padding: const EdgeInsets.only(bottom: 20),
// //                       itemCount: filteredTickets.length,
// //                       itemBuilder: (context, index) {
// //                         final ticket = filteredTickets[index];
// //                         return GestureDetector(
// //                           onTap: () {
// //                             Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                 builder: (context) => BusDetailsScreen(
// //                                   ticket: ticket,
// //                                 ),
// //                               ),
// //                             );
// //                           },
// //                           child: _buildBusTicketCard(ticket),
// //                         );
// //                       },
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildBusTicketCard(BusTicket ticket) {
// //     final isAC = ticket.ticketType.toLowerCase().contains('ac') &&
// //         !ticket.ticketType.toLowerCase().contains('non');
// //     final badgeText = isAC ? 'AC' : 'NON-AC';
// //     final badgeColor = isAC ? const Color(0xFFE3F2FD) : const Color(0xFFFFF3E0);
// //     final badgeTextColor =
// //         isAC ? const Color(0xFF1976D2) : const Color(0xFFFF9800);

// //     final departureTime = DateFormat('HH:mm').format(ticket.createdAt);
// //     final arrivalTime = DateFormat('HH:mm').format(ticket.dateOfJourney);
// //     final dateOfJourney =
// //         DateFormat('MMM dd, yyyy').format(ticket.dateOfJourney);

// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// //       child: ClipPath(
// //         clipper: TicketClipper(),
// //         child: Container(
// //           decoration: BoxDecoration(
// //             color: Colors.white,
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.grey.withOpacity(0.15),
// //                 spreadRadius: 1,
// //                 blurRadius: 8,
// //                 offset: const Offset(0, 2),
// //               ),
// //             ],
// //           ),
// //           child: Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               children: [
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Expanded(
// //                       child: Row(
// //                         children: [
// //                           const Icon(
// //                             Icons.directions_bus,
// //                             size: 20,
// //                             color: Colors.black87,
// //                           ),
// //                           const SizedBox(width: 8),
// //                           Expanded(
// //                             child: Text(
// //                               ticket.busName,
// //                               style: const TextStyle(
// //                                 fontSize: 16,
// //                                 fontWeight: FontWeight.w600,
// //                                 color: Colors.black87,
// //                               ),
// //                               overflow: TextOverflow.ellipsis,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Container(
// //                       padding: const EdgeInsets.symmetric(
// //                           horizontal: 8, vertical: 4),
// //                       decoration: BoxDecoration(
// //                         color: badgeColor,
// //                         borderRadius: BorderRadius.circular(12),
// //                       ),
// //                       child: Text(
// //                         badgeText,
// //                         style: TextStyle(
// //                           color: badgeTextColor,
// //                           fontSize: 12,
// //                           fontWeight: FontWeight.w500,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 4),
// //                 Row(
// //                   children: [
// //                     Icon(
// //                       Icons.calendar_today,
// //                       size: 12,
// //                       color: Colors.grey[600],
// //                     ),
// //                     const SizedBox(width: 4),
// //                     Text(
// //                       dateOfJourney,
// //                       style: TextStyle(
// //                         fontSize: 12,
// //                         color: Colors.grey[600],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 16),
// //                 Row(
// //                   children: [
// //                     Expanded(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             ticket.pickupPoint,
// //                             style: TextStyle(
// //                               color: Colors.grey[600],
// //                               fontSize: 12,
// //                             ),
// //                             overflow: TextOverflow.ellipsis,
// //                           ),
// //                           Text(
// //                             departureTime,
// //                             style: const TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: Container(
// //                         margin: const EdgeInsets.symmetric(horizontal: 8),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               width: 8,
// //                               height: 8,
// //                               decoration: const BoxDecoration(
// //                                 color: Color(0xFF4A90E2),
// //                                 shape: BoxShape.circle,
// //                               ),
// //                             ),
// //                             Expanded(
// //                               child: Container(
// //                                 height: 2,
// //                                 decoration: const BoxDecoration(
// //                                   color: Color(0xFF4A90E2),
// //                                 ),
// //                                 child: Row(
// //                                   mainAxisAlignment: MainAxisAlignment.center,
// //                                   children: [
// //                                     Container(
// //                                       padding: const EdgeInsets.all(4),
// //                                       decoration: const BoxDecoration(
// //                                         color: Color(0xFF4A90E2),
// //                                         shape: BoxShape.circle,
// //                                       ),
// //                                       child: const Icon(
// //                                         Icons.directions_bus,
// //                                         color: Colors.white,
// //                                         size: 16,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             Container(
// //                               width: 8,
// //                               height: 8,
// //                               decoration: const BoxDecoration(
// //                                 color: Color(0xFF4A90E2),
// //                                 shape: BoxShape.circle,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.end,
// //                         children: [
// //                           Text(
// //                             ticket.dropPoint,
// //                             style: TextStyle(
// //                               color: Colors.grey[600],
// //                               fontSize: 12,
// //                             ),
// //                             overflow: TextOverflow.ellipsis,
// //                             textAlign: TextAlign.right,
// //                           ),
// //                           Text(
// //                             arrivalTime,
// //                             style: const TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 16),
// //                 Container(height: 1, color: Colors.grey[200]),
// //                 const SizedBox(height: 12),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           '₹ ${ticket.totalPrice.toStringAsFixed(0)}',
// //                           style: const TextStyle(
// //                             fontSize: 20,
// //                             fontWeight: FontWeight.bold,
// //                             color: Colors.black87,
// //                           ),
// //                         ),
// //                         Text(
// //                           'per ticket',
// //                           style: TextStyle(
// //                             color: Colors.grey[600],
// //                             fontSize: 11,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     const Row(
// //                       children: [
// //                         Text(
// //                           'Select',
// //                           style: TextStyle(
// //                             color: Color(0xFF4A90E2),
// //                             fontSize: 16,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                         SizedBox(width: 4),
// //                         Icon(
// //                           Icons.arrow_forward_ios,
// //                           color: Color(0xFF4A90E2),
// //                           size: 14,
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TicketClipper extends CustomClipper<Path> {
// //   @override
// //   Path getClip(Size size) {
// //     Path path = Path();
// //     double circleRadius = 12;

// //     path.lineTo(0, size.height - circleRadius);
// //     path.arcToPoint(
// //       Offset(0, size.height),
// //       radius: Radius.circular(circleRadius),
// //       clockwise: false,
// //     );

// //     path.lineTo(size.width, size.height);
// //     path.arcToPoint(
// //       Offset(size.width, size.height - circleRadius),
// //       radius: Radius.circular(circleRadius),
// //       clockwise: false,
// //     );

// //     path.lineTo(size.width, 0);
// //     path.close();

// //     return path;
// //   }

// //   @override
// //   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// // }












// // import 'package:backup_ticket/provider/selltickets/sell_bus_ticket_provider.dart';
// // import 'package:backup_ticket/model/bus_ticket_model.dart';
// // import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
// // import 'package:backup_ticket/views/notifications/notification_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:intl/intl.dart';

// // class BusScreen extends StatefulWidget {
// //   const BusScreen({super.key});

// //   @override
// //   State<BusScreen> createState() => _BusScreenState();
// // }

// // class _BusScreenState extends State<BusScreen> {
// //   DateTime? _selectedDate;
// //   String _searchQuery = '';
// //   String _fromLocation = '';
// //   String _toLocation = '';
// //   final TextEditingController _searchController = TextEditingController();
// //   final TextEditingController _fromController = TextEditingController();
// //   final TextEditingController _toController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     WidgetsBinding.instance.addPostFrameCallback((_) {
// //       _loadTickets();
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _searchController.dispose();
// //     _fromController.dispose();
// //     _toController.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _loadTickets() async {
// //     final provider = Provider.of<BusTicketProvider>(context, listen: false);
// //     try {
// //       await provider.fetchMyTickets();
// //     } catch (e) {
// //       if (mounted) {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(
// //             content: Text('Error loading tickets: $e'),
// //             backgroundColor: Colors.red,
// //           ),
// //         );
// //       }
// //     }
// //   }

// //   Future<void> _selectDate() async {
// //     final DateTime? picked = await showDatePicker(
// //       context: context,
// //       initialDate: _selectedDate ?? DateTime.now(),
// //       firstDate: DateTime.now(),
// //       lastDate: DateTime.now().add(const Duration(days: 365)),
// //       builder: (context, child) {
// //         return Theme(
// //           data: Theme.of(context).copyWith(
// //             colorScheme: const ColorScheme.light(
// //               primary: Color(0xFF1976D2),
// //               onPrimary: Colors.white,
// //               onSurface: Colors.black,
// //             ),
// //           ),
// //           child: child!,
// //         );
// //       },
// //     );

// //     if (picked != null && picked != _selectedDate) {
// //       setState(() {
// //         _selectedDate = picked;
// //       });
// //       _loadTickets();
// //     }
// //   }

// //   void _clearFilters() {
// //     setState(() {
// //       _selectedDate = null;
// //       _searchQuery = '';
// //       _fromLocation = '';
// //       _toLocation = '';
// //       _searchController.clear();
// //       _fromController.clear();
// //       _toController.clear();
// //     });
// //     _loadTickets();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: PreferredSize(
// //         preferredSize: const Size.fromHeight(90),
// //         child: AppBar(
// //           automaticallyImplyLeading: false,
// //           elevation: 0,
// //           flexibleSpace: ClipRRect(
// //             borderRadius: const BorderRadius.only(
// //               bottomLeft: Radius.circular(25),
// //               bottomRight: Radius.circular(25),
// //             ),
// //             child: Container(
// //               decoration: const BoxDecoration(
// //                 gradient: LinearGradient(
// //                   colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
// //                   begin: Alignment.topLeft,
// //                   end: Alignment.bottomRight,
// //                 ),
// //               ),
// //               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
// //               child: SafeArea(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Row(
// //                           children: const [
// //                             Icon(Icons.send, color: Colors.white, size: 18),
// //                             SizedBox(width: 5),
// //                             Text(
// //                               "Hyderabad, Telangana..",
// //                               style: TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: 16,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                             Icon(
// //                               Icons.keyboard_arrow_down,
// //                               color: Colors.white,
// //                               size: 20,
// //                             ),
// //                           ],
// //                         ),
// //                         const SizedBox(height: 2),
// //                         const Text(
// //                           "       Hyderabad, Telangana, India",
// //                           style: TextStyle(color: Colors.white, fontSize: 12),
// //                         ),
// //                       ],
// //                     ),
// //                     Container(
// //                       padding: const EdgeInsets.all(8),
// //                       decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         shape: BoxShape.circle,
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.black26,
// //                             blurRadius: 4,
// //                             offset: Offset(0, 2),
// //                           ),
// //                         ],
// //                       ),
// //                       child: GestureDetector(
// //                         onTap: () {
// //                           Navigator.push(
// //                             context,
// //                             MaterialPageRoute(
// //                               builder: (context) => NotificationScreen(),
// //                             ),
// //                           );
// //                         },
// //                         child: const Icon(
// //                           Icons.notifications_none,
// //                           color: Colors.black87,
// //                           size: 22,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //       backgroundColor: const Color(0xFFF5F5F5),
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             // Scrollable Search Section
// //             Expanded(
// //               child: CustomScrollView(
// //                 slivers: [
// //                   // From and To Search Fields
// //                   SliverToBoxAdapter(
// //                     child: Container(
// //                       margin: const EdgeInsets.all(16.0),
// //                       padding: const EdgeInsets.all(16.0),
// //                       decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(20),
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.grey.withOpacity(0.15),
// //                             spreadRadius: 1,
// //                             blurRadius: 10,
// //                             offset: const Offset(0, 2),
// //                           ),
// //                         ],
// //                       ),
// //                       child: Column(
// //                         children: [
// //                           // From Field
// //                           Container(
// //                             padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //                             decoration: BoxDecoration(
// //                               border: Border.all(color: Colors.grey.shade300),
// //                               borderRadius: BorderRadius.circular(12),
// //                             ),
// //                             child: Row(
// //                               children: [
// //                                 const Icon(Icons.trip_origin, 
// //                                   color: Color(0xFF1976D2), size: 20),
// //                                 const SizedBox(width: 12),
// //                                 Expanded(
// //                                   child: TextField(
// //                                     controller: _fromController,
// //                                     decoration: const InputDecoration(
// //                                       hintText: 'From',
// //                                       hintStyle: TextStyle(
// //                                         color: Colors.grey, fontSize: 16),
// //                                       border: InputBorder.none,
// //                                     ),
// //                                     onChanged: (value) {
// //                                       setState(() {
// //                                         _fromLocation = value.toLowerCase();
// //                                       });
// //                                     },
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
                          
// //                           const SizedBox(height: 12),
                          
// //                           // To Field
// //                           Container(
// //                             padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //                             decoration: BoxDecoration(
// //                               border: Border.all(color: Colors.grey.shade300),
// //                               borderRadius: BorderRadius.circular(12),
// //                             ),
// //                             child: Row(
// //                               children: [
// //                                 const Icon(Icons.location_on, 
// //                                   color: Colors.red, size: 20),
// //                                 const SizedBox(width: 12),
// //                                 Expanded(
// //                                   child: TextField(
// //                                     controller: _toController,
// //                                     decoration: const InputDecoration(
// //                                       hintText: 'To',
// //                                       hintStyle: TextStyle(
// //                                         color: Colors.grey, fontSize: 16),
// //                                       border: InputBorder.none,
// //                                     ),
// //                                     onChanged: (value) {
// //                                       setState(() {
// //                                         _toLocation = value.toLowerCase();
// //                                       });
// //                                     },
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
                          
// //                           const SizedBox(height: 12),
                          
// //                           // Date and Search Button Row
// //                           Row(
// //                             children: [
// //                               // Date Selector
// //                               Expanded(
// //                                 child: GestureDetector(
// //                                   onTap: _selectDate,
// //                                   child: Container(
// //                                     padding: const EdgeInsets.symmetric(
// //                                       horizontal: 12, vertical: 14),
// //                                     decoration: BoxDecoration(
// //                                       border: Border.all(color: Colors.grey.shade300),
// //                                       borderRadius: BorderRadius.circular(12),
// //                                     ),
// //                                     child: Row(
// //                                       children: [
// //                                         const Icon(Icons.calendar_today, 
// //                                           color: Color(0xFF1976D2), size: 18),
// //                                         const SizedBox(width: 12),
// //                                         Expanded(
// //                                           child: Text(
// //                                             _selectedDate != null
// //                                                 ? DateFormat('dd MMM, yyyy')
// //                                                     .format(_selectedDate!)
// //                                                 : 'Date of Journey',
// //                                             style: TextStyle(
// //                                               color: _selectedDate != null
// //                                                   ? Colors.black87
// //                                                   : Colors.grey,
// //                                               fontSize: 14,
// //                                             ),
// //                                             overflow: TextOverflow.ellipsis,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ),
                              
// //                               const SizedBox(width: 12),
                              
// //                               // Search Button
// //                               Container(
// //                                 decoration: BoxDecoration(
// //                                   gradient: const LinearGradient(
// //                                     colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
// //                                   ),
// //                                   borderRadius: BorderRadius.circular(12),
// //                                 ),
// //                                 child: Material(
// //                                   color: Colors.transparent,
// //                                   child: InkWell(
// //                                     onTap: _loadTickets,
// //                                     borderRadius: BorderRadius.circular(12),
// //                                     child: Container(
// //                                       padding: const EdgeInsets.symmetric(
// //                                         horizontal: 20, vertical: 14),
// //                                       child: const Icon(
// //                                         Icons.search,
// //                                         color: Colors.white,
// //                                         size: 24,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),

// //                   // General Search Bar
// //                   SliverToBoxAdapter(
// //                     child: Container(
// //                       margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
// //                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                       height: 50,
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: Colors.grey.shade300),
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(25),
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.grey.withOpacity(0.1),
// //                             spreadRadius: 1,
// //                             blurRadius: 10,
// //                             offset: const Offset(0, 2),
// //                           ),
// //                         ],
// //                       ),
// //                       child: TextField(
// //                         controller: _searchController,
// //                         decoration: const InputDecoration(
// //                           icon: Icon(Icons.search, color: Colors.grey, size: 20),
// //                           hintText: 'Search buses, routes...',
// //                           hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
// //                           border: InputBorder.none,
// //                         ),
// //                         onChanged: (value) {
// //                           setState(() {
// //                             _searchQuery = value.toLowerCase();
// //                           });
// //                         },
// //                       ),
// //                     ),
// //                   ),

// //                   // Active Filters Chips
// //                   if (_selectedDate != null || 
// //                       _fromLocation.isNotEmpty || 
// //                       _toLocation.isNotEmpty)
// //                     SliverToBoxAdapter(
// //                       child: Container(
// //                         padding: const EdgeInsets.symmetric(
// //                           horizontal: 16.0, vertical: 8.0),
// //                         child: SingleChildScrollView(
// //                           scrollDirection: Axis.horizontal,
// //                           child: Row(
// //                             children: [
// //                               if (_fromLocation.isNotEmpty)
// //                                 Padding(
// //                                   padding: const EdgeInsets.only(right: 8.0),
// //                                   child: Chip(
// //                                     label: Text(
// //                                       'From: $_fromLocation',
// //                                       style: const TextStyle(fontSize: 12),
// //                                     ),
// //                                     deleteIcon: const Icon(Icons.close, size: 18),
// //                                     onDeleted: () {
// //                                       setState(() {
// //                                         _fromLocation = '';
// //                                         _fromController.clear();
// //                                       });
// //                                     },
// //                                     backgroundColor: const Color(0xFFE3F2FD),
// //                                   ),
// //                                 ),
// //                               if (_toLocation.isNotEmpty)
// //                                 Padding(
// //                                   padding: const EdgeInsets.only(right: 8.0),
// //                                   child: Chip(
// //                                     label: Text(
// //                                       'To: $_toLocation',
// //                                       style: const TextStyle(fontSize: 12),
// //                                     ),
// //                                     deleteIcon: const Icon(Icons.close, size: 18),
// //                                     onDeleted: () {
// //                                       setState(() {
// //                                         _toLocation = '';
// //                                         _toController.clear();
// //                                       });
// //                                     },
// //                                     backgroundColor: const Color(0xFFFFE0E0),
// //                                   ),
// //                                 ),
// //                               if (_selectedDate != null)
// //                                 Padding(
// //                                   padding: const EdgeInsets.only(right: 8.0),
// //                                   child: Chip(
// //                                     label: Text(
// //                                       DateFormat('MMM dd, yyyy').format(_selectedDate!),
// //                                       style: const TextStyle(fontSize: 12),
// //                                     ),
// //                                     deleteIcon: const Icon(Icons.close, size: 18),
// //                                     onDeleted: () {
// //                                       setState(() {
// //                                         _selectedDate = null;
// //                                       });
// //                                     },
// //                                     backgroundColor: const Color(0xFFFFF3E0),
// //                                   ),
// //                                 ),
// //                               TextButton.icon(
// //                                 onPressed: _clearFilters,
// //                                 icon: const Icon(Icons.clear_all, size: 18),
// //                                 label: const Text('Clear All'),
// //                                 style: TextButton.styleFrom(
// //                                   foregroundColor: const Color(0xFF1976D2),
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ),

// //                   // Available Nearby Bus Tickets Section
// //                   SliverToBoxAdapter(
// //                     child: Padding(
// //                       padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           const Text(
// //                             'Available Nearby Bus Tickets',
// //                             style: TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                           IconButton(
// //                             icon: const Icon(Icons.refresh, color: Color(0xFF1976D2)),
// //                             onPressed: _loadTickets,
// //                             tooltip: 'Refresh',
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),

// //                   // Bus Ticket Cards List
// //                   SliverFillRemaining(
// //                     child: Consumer<BusTicketProvider>(
// //                       builder: (context, provider, child) {
// //                         if (provider.isLoading) {
// //                           return const Center(
// //                             child: CircularProgressIndicator(
// //                               color: Color(0xFF1976D2),
// //                             ),
// //                           );
// //                         }

// //                         // Filter tickets based on all search criteria
// //                         List<BusTicket> filteredTickets = provider.tickets;

// //                         if (_fromLocation.isNotEmpty) {
// //                           filteredTickets = filteredTickets.where((ticket) {
// //                             return ticket.pickupPoint
// //                                 .toLowerCase()
// //                                 .contains(_fromLocation);
// //                           }).toList();
// //                         }

// //                         if (_toLocation.isNotEmpty) {
// //                           filteredTickets = filteredTickets.where((ticket) {
// //                             return ticket.dropPoint
// //                                 .toLowerCase()
// //                                 .contains(_toLocation);
// //                           }).toList();
// //                         }

// //                         if (_searchQuery.isNotEmpty) {
// //                           filteredTickets = filteredTickets.where((ticket) {
// //                             return ticket.busName
// //                                     .toLowerCase()
// //                                     .contains(_searchQuery) ||
// //                                 ticket.pickupPoint
// //                                     .toLowerCase()
// //                                     .contains(_searchQuery) ||
// //                                 ticket.dropPoint
// //                                     .toLowerCase()
// //                                     .contains(_searchQuery) ||
// //                                 ticket.ticketType
// //                                     .toLowerCase()
// //                                     .contains(_searchQuery);
// //                           }).toList();
// //                         }

// //                         if (filteredTickets.isEmpty) {
// //                           return Center(
// //                             child: Column(
// //                               mainAxisAlignment: MainAxisAlignment.center,
// //                               children: [
// //                                 Icon(
// //                                   Icons.confirmation_number_outlined,
// //                                   size: 80,
// //                                   color: Colors.grey[300],
// //                                 ),
// //                                 const SizedBox(height: 16),
// //                                 Text(
// //                                   _searchQuery.isNotEmpty ||
// //                                           _fromLocation.isNotEmpty ||
// //                                           _toLocation.isNotEmpty
// //                                       ? 'No tickets found matching your search'
// //                                       : _selectedDate != null
// //                                           ? 'No tickets available for selected date'
// //                                           : 'No tickets available',
// //                                   style: TextStyle(
// //                                     fontSize: 16,
// //                                     color: Colors.grey[600],
// //                                   ),
// //                                   textAlign: TextAlign.center,
// //                                 ),
// //                                 const SizedBox(height: 8),
// //                                 if (_selectedDate != null ||
// //                                     _searchQuery.isNotEmpty ||
// //                                     _fromLocation.isNotEmpty ||
// //                                     _toLocation.isNotEmpty)
// //                                   TextButton.icon(
// //                                     onPressed: _clearFilters,
// //                                     icon: const Icon(Icons.clear_all),
// //                                     label: const Text('Clear Filters'),
// //                                     style: TextButton.styleFrom(
// //                                       foregroundColor: const Color(0xFF1976D2),
// //                                     ),
// //                                   ),
// //                               ],
// //                             ),
// //                           );
// //                         }

// //                         return RefreshIndicator(
// //                           onRefresh: _loadTickets,
// //                           color: const Color(0xFF1976D2),
// //                           child: ListView.builder(
// //                             padding: const EdgeInsets.only(bottom: 20),
// //                             itemCount: filteredTickets.length,
// //                             itemBuilder: (context, index) {
// //                               final ticket = filteredTickets[index];
// //                               return GestureDetector(
// //                                 onTap: () {
// //                                   Navigator.push(
// //                                     context,
// //                                     MaterialPageRoute(
// //                                       builder: (context) => BusDetailsScreen(
// //                                         ticket: ticket,
// //                                         nooftickets: ticket.numberOfTickets.toString(),
// //                                       ),
// //                                     ),
// //                                   );
// //                                 },
// //                                 child: _buildBusTicketCard(ticket),
// //                               );
// //                             },
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildBusTicketCard(BusTicket ticket) {
// //     final isAC = ticket.ticketType.toLowerCase().contains('ac') &&
// //         !ticket.ticketType.toLowerCase().contains('non');
// //     final badgeText = isAC ? 'AC' : 'NON-AC';
// //     final badgeColor = isAC ? const Color(0xFFE3F2FD) : const Color(0xFFFFF3E0);
// //     final badgeTextColor =
// //         isAC ? const Color(0xFF1976D2) : const Color(0xFFFF9800);

// //     final departureTime = DateFormat('HH:mm').format(ticket.createdAt);
// //     final arrivalTime = DateFormat('HH:mm').format(ticket.dateOfJourney);
// //     final dateOfJourney =
// //         DateFormat('MMM dd, yyyy').format(ticket.dateOfJourney);

// //     return Container(
// //       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// //       child: ClipPath(
// //         clipper: TicketClipper(),
// //         child: Container(
// //           decoration: BoxDecoration(
// //             color: Colors.white,
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.grey.withOpacity(0.15),
// //                 spreadRadius: 1,
// //                 blurRadius: 8,
// //                 offset: const Offset(0, 2),
// //               ),
// //             ],
// //           ),
// //           child: Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               children: [
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Expanded(
// //                       child: Row(
// //                         children: [
// //                           const Icon(
// //                             Icons.directions_bus,
// //                             size: 20,
// //                             color: Colors.black87,
// //                           ),
// //                           const SizedBox(width: 8),
// //                           Expanded(
// //                             child: Text(
// //                               ticket.busName,
// //                               style: const TextStyle(
// //                                 fontSize: 16,
// //                                 fontWeight: FontWeight.w600,
// //                                 color: Colors.black87,
// //                               ),
// //                               overflow: TextOverflow.ellipsis,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Container(
// //                       padding: const EdgeInsets.symmetric(
// //                           horizontal: 8, vertical: 4),
// //                       decoration: BoxDecoration(
// //                         color: badgeColor,
// //                         borderRadius: BorderRadius.circular(12),
// //                       ),
// //                       child: Text(
// //                         badgeText,
// //                         style: TextStyle(
// //                           color: badgeTextColor,
// //                           fontSize: 12,
// //                           fontWeight: FontWeight.w500,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 4),
// //                 Row(
// //                   children: [
// //                     Icon(
// //                       Icons.calendar_today,
// //                       size: 12,
// //                       color: Colors.grey[600],
// //                     ),
// //                     const SizedBox(width: 4),
// //                     Text(
// //                       dateOfJourney,
// //                       style: TextStyle(
// //                         fontSize: 12,
// //                         color: Colors.grey[600],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 16),
// //                 Row(
// //                   children: [
// //                     Expanded(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             ticket.pickupPoint,
// //                             style: TextStyle(
// //                               color: Colors.grey[600],
// //                               fontSize: 12,
// //                             ),
// //                             overflow: TextOverflow.ellipsis,
// //                           ),
// //                           Text(
// //                             departureTime,
// //                             style: const TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: Container(
// //                         margin: const EdgeInsets.symmetric(horizontal: 8),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               width: 8,
// //                               height: 8,
// //                               decoration: const BoxDecoration(
// //                                 color: Color(0xFF4A90E2),
// //                                 shape: BoxShape.circle,
// //                               ),
// //                             ),
// //                             Expanded(
// //                               child: Container(
// //                                 height: 2,
// //                                 decoration: const BoxDecoration(
// //                                   color: Color(0xFF4A90E2),
// //                                 ),
// //                                 child: Row(
// //                                   mainAxisAlignment: MainAxisAlignment.center,
// //                                   children: [
// //                                     Container(
// //                                       padding: const EdgeInsets.all(4),
// //                                       decoration: const BoxDecoration(
// //                                         color: Color(0xFF4A90E2),
// //                                         shape: BoxShape.circle,
// //                                       ),
// //                                       child: const Icon(
// //                                         Icons.directions_bus,
// //                                         color: Colors.white,
// //                                         size: 16,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             Container(
// //                               width: 8,
// //                               height: 8,
// //                               decoration: const BoxDecoration(
// //                                 color: Color(0xFF4A90E2),
// //                                 shape: BoxShape.circle,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.end,
// //                         children: [
// //                           Text(
// //                             ticket.dropPoint,
// //                             style: TextStyle(
// //                               color: Colors.grey[600],
// //                               fontSize: 12,
// //                             ),
// //                             overflow: TextOverflow.ellipsis,
// //                             textAlign: TextAlign.right,
// //                           ),
// //                           Text(
// //                             arrivalTime,
// //                             style: const TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 16),
// //                 Container(height: 1, color: Colors.grey[200]),
// //                 const SizedBox(height: 12),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           '₹ ${ticket.totalPrice.toStringAsFixed(0)}',
// //                           style: const TextStyle(
// //                             fontSize: 20,
// //                             fontWeight: FontWeight.bold,
// //                             color: Colors.black87,
// //                           ),
// //                         ),
// //                         Text(
// //                           'per ticket',
// //                           style: TextStyle(
// //                             color: Colors.grey[600],
// //                             fontSize: 11,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     const Row(
// //                       children: [
// //                         Text(
// //                           'Select',
// //                           style: TextStyle(
// //                             color: Color(0xFF4A90E2),
// //                             fontSize: 16,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                         SizedBox(width: 4),
// //                         Icon(
// //                           Icons.arrow_forward_ios,
// //                           color: Color(0xFF4A90E2),
// //                           size: 14,
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TicketClipper extends CustomClipper<Path> {
// //   @override
// //   Path getClip(Size size) {
// //     Path path = Path();
// //     double circleRadius = 12;

// //     path.lineTo(0, size.height - circleRadius);
// //     path.arcToPoint(
// //       Offset(0, size.height),
// //       radius: Radius.circular(circleRadius),
// //       clockwise: false,
// //     );

// //     path.lineTo(size.width, size.height);
// //     path.arcToPoint(
// //       Offset(size.width, size.height - circleRadius),
// //       radius: Radius.circular(circleRadius),
// //       clockwise: false,
// //     );

// //     path.lineTo(size.width, 0);
// //     path.close();

// //     return path;
// //   }

// //   @override
// //   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// // }















// import 'package:backup_ticket/provider/selltickets/sell_bus_ticket_provider.dart';
// import 'package:backup_ticket/model/bus_ticket_model.dart';
// import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
// import 'package:backup_ticket/views/notifications/notification_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:intl/intl.dart';

// class BusScreen extends StatefulWidget {
//   const BusScreen({super.key});

//   @override
//   State<BusScreen> createState() => _BusScreenState();
// }

// class _BusScreenState extends State<BusScreen> {
//   DateTime? _selectedDate;
//   String _searchQuery = '';
//   String _fromLocation = '';
//   String _toLocation = '';
//   final TextEditingController _searchController = TextEditingController();
//   final TextEditingController _fromController = TextEditingController();
//   final TextEditingController _toController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _loadTickets();
//     });
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     _fromController.dispose();
//     _toController.dispose();
//     super.dispose();
//   }

//   Future<void> _loadTickets() async {
//     final provider = Provider.of<BusTicketProvider>(context, listen: false);
//     try {
//       await provider.fetchMyTickets();
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error loading tickets: $e'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

//   Future<void> _selectDate() async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate ?? DateTime.now(),
//       firstDate: DateTime.now(),
//       lastDate: DateTime.now().add(const Duration(days: 365)),
//       builder: (context, child) {
//         return Theme(
//           data: Theme.of(context).copyWith(
//             colorScheme: const ColorScheme.light(
//               primary: Color(0xFF1976D2),
//               onPrimary: Colors.white,
//               onSurface: Colors.black,
//             ),
//           ),
//           child: child!,
//         );
//       },
//     );

//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//       _loadTickets();
//     }
//   }

//   void _clearFilters() {
//     setState(() {
//       _selectedDate = null;
//       _searchQuery = '';
//       _fromLocation = '';
//       _toLocation = '';
//       _searchController.clear();
//       _fromController.clear();
//       _toController.clear();
//     });
//     _loadTickets();
//   }

//   // New method to show ticket selection popup
//   void _showTicketSelectionPopup(BusTicket ticket) {
//     int selectedTicketCount = 1;
//     int maxTickets = ticket.numberOfTickets;

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (context, setDialogState) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Container(
//                 constraints: BoxConstraints(
//                   maxHeight: MediaQuery.of(context).size.height * 0.8,
//                 ),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.white,
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // Fixed Header
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Select Tickets',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.close, color: Colors.grey),
//                             onPressed: () => Navigator.pop(context),
//                             padding: EdgeInsets.zero,
//                             constraints: const BoxConstraints(),
//                           ),
//                         ],
//                       ),
//                     ),
                    
//                     // Scrollable Content
//                     Flexible(
//                       child: SingleChildScrollView(
//                         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                                     // Bus info
//                             Container(
//                               padding: const EdgeInsets.all(12),
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFFF5F5F5),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       const Icon(Icons.directions_bus, 
//                                         size: 18, color: Color(0xFF1976D2)),
//                                       const SizedBox(width: 8),
//                                       Expanded(
//                                         child: Text(
//                                           ticket.busName,
//                                           style: const TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.black87,
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Row(
//                                     children: [
//                                       Expanded(
//                                         child: Text(
//                                           ticket.pickupPoint,
//                                           style: const TextStyle(
//                                             fontSize: 12,
//                                             color: Colors.black87,
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                       ),
//                                       const Icon(Icons.arrow_forward, 
//                                         size: 14, color: Colors.grey),
//                                       const SizedBox(width: 4),
//                                       Expanded(
//                                         child: Text(
//                                           ticket.dropPoint,
//                                           style: const TextStyle(
//                                             fontSize: 12,
//                                             color: Colors.black87,
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                           textAlign: TextAlign.right,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
                            
//                             const SizedBox(height: 20),
                            
//                             // Available tickets info
//                             Text(
//                               'Available Tickets: $maxTickets',
//                               style: TextStyle(
//                                 fontSize: 13,
//                                 color: Colors.grey[700],
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
                            
//                             const SizedBox(height: 16),
                            
//                             // Ticket counter
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 12, vertical: 10),
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: const Color(0xFF1976D2).withOpacity(0.3)),
//                                 borderRadius: BorderRadius.circular(16),
//                               ),
//                               child: Column(
//                                 children: [
//                                   const Text(
//                                     'Number of Tickets',
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 12),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       // Decrement button
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: selectedTicketCount > 1
//                                               ? const Color(0xFF1976D2)
//                                               : Colors.grey[300],
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: IconButton(
//                                           icon: const Icon(Icons.remove, 
//                                             color: Colors.white, size: 20),
//                                           onPressed: selectedTicketCount > 1
//                                               ? () {
//                                                   setDialogState(() {
//                                                     selectedTicketCount--;
//                                                   });
//                                                 }
//                                               : null,
//                                           padding: const EdgeInsets.all(8),
//                                           constraints: const BoxConstraints(),
//                                         ),
//                                       ),
                                      
//                                       // Counter display
//                                       Container(
//                                         margin: const EdgeInsets.symmetric(
//                                           horizontal: 20),
//                                         padding: const EdgeInsets.symmetric(
//                                           horizontal: 16, vertical: 8),
//                                         decoration: BoxDecoration(
//                                           color: const Color(0xFFE3F2FD),
//                                           borderRadius: BorderRadius.circular(12),
//                                         ),
//                                         child: Text(
//                                           selectedTicketCount.toString(),
//                                           style: const TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                             color: Color(0xFF1976D2),
//                                           ),
//                                         ),
//                                       ),
                                      
//                                       // Increment button
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: selectedTicketCount < maxTickets
//                                               ? const Color(0xFF1976D2)
//                                               : Colors.grey[300],
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: IconButton(
//                                           icon: const Icon(Icons.add, 
//                                             color: Colors.white, size: 20),
//                                           onPressed: selectedTicketCount < maxTickets
//                                               ? () {
//                                                   setDialogState(() {
//                                                     selectedTicketCount++;
//                                                   });
//                                                 }
//                                               : null,
//                                           padding: const EdgeInsets.all(8),
//                                           constraints: const BoxConstraints(),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
                            
//                             const SizedBox(height: 16),
                            
//                             // Price calculation
//                             Container(
//                               padding: const EdgeInsets.all(14),
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFFF5F5F5),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text(
//                                     'Total Amount',
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                   Text(
//                                     '₹ ${(ticket.totalPrice * selectedTicketCount).toStringAsFixed(0)}',
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xFF1976D2),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                           ],
//                         ),
//                       ),
//                     ),
                    
//                     // Fixed Footer Button
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
//                       child: SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => BusDetailsScreen(
//                                   ticket: ticket,
//                                   nooftickets: selectedTicketCount.toString(),
//                                 ),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xFF1976D2),
//                             padding: const EdgeInsets.symmetric(vertical: 14),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             elevation: 0,
//                           ),
//                           child: const Text(
//                             'Proceed to Book',
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
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
//                         const SizedBox(height: 2),
//                         const Text(
//                           "       Hyderabad, Telangana, India",
//                           style: TextStyle(color: Colors.white, fontSize: 12),
//                         ),
//                       ],
//                     ),
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
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => NotificationScreen(),
//                             ),
//                           );
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
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Scrollable Search Section
//             Expanded(
//               child: CustomScrollView(
//                 slivers: [
//                   // From and To Search Fields
//                   SliverToBoxAdapter(
//                     child: Container(
//                       margin: const EdgeInsets.all(16.0),
//                       padding: const EdgeInsets.all(16.0),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.15),
//                             spreadRadius: 1,
//                             blurRadius: 10,
//                             offset: const Offset(0, 2),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           // From Field
//                           Container(
//                             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade300),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Row(
//                               children: [
//                                 const Icon(Icons.trip_origin, 
//                                   color: Color(0xFF1976D2), size: 20),
//                                 const SizedBox(width: 12),
//                                 Expanded(
//                                   child: TextField(
//                                     controller: _fromController,
//                                     decoration: const InputDecoration(
//                                       hintText: 'From',
//                                       hintStyle: TextStyle(
//                                         color: Colors.grey, fontSize: 16),
//                                       border: InputBorder.none,
//                                     ),
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _fromLocation = value.toLowerCase();
//                                       });
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
                          
//                           const SizedBox(height: 12),
                          
//                           // To Field
//                           Container(
//                             padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade300),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Row(
//                               children: [
//                                 const Icon(Icons.location_on, 
//                                   color: Colors.red, size: 20),
//                                 const SizedBox(width: 12),
//                                 Expanded(
//                                   child: TextField(
//                                     controller: _toController,
//                                     decoration: const InputDecoration(
//                                       hintText: 'To',
//                                       hintStyle: TextStyle(
//                                         color: Colors.grey, fontSize: 16),
//                                       border: InputBorder.none,
//                                     ),
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _toLocation = value.toLowerCase();
//                                       });
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
                          
//                           const SizedBox(height: 12),
                          
//                           // Date and Search Button Row
//                           Row(
//                             children: [
//                               // Date Selector
//                               Expanded(
//                                 child: GestureDetector(
//                                   onTap: _selectDate,
//                                   child: Container(
//                                     padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 14),
//                                     decoration: BoxDecoration(
//                                       border: Border.all(color: Colors.grey.shade300),
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: Row(
//                                       children: [
//                                         const Icon(Icons.calendar_today, 
//                                           color: Color(0xFF1976D2), size: 18),
//                                         const SizedBox(width: 12),
//                                         Expanded(
//                                           child: Text(
//                                             _selectedDate != null
//                                                 ? DateFormat('dd MMM, yyyy')
//                                                     .format(_selectedDate!)
//                                                 : 'Date of Journey',
//                                             style: TextStyle(
//                                               color: _selectedDate != null
//                                                   ? Colors.black87
//                                                   : Colors.grey,
//                                               fontSize: 14,
//                                             ),
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
                              
//                               const SizedBox(width: 12),
                              
//                               // Search Button
//                               Container(
//                                 decoration: BoxDecoration(
//                                   gradient: const LinearGradient(
//                                     colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Material(
//                                   color: Colors.transparent,
//                                   child: InkWell(
//                                     onTap: _loadTickets,
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: Container(
//                                       padding: const EdgeInsets.symmetric(
//                                         horizontal: 20, vertical: 14),
//                                       child: const Icon(
//                                         Icons.search,
//                                         color: Colors.white,
//                                         size: 24,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // General Search Bar
//                   SliverToBoxAdapter(
//                     child: Container(
//                       margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       height: 50,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey.shade300),
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(25),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.1),
//                             spreadRadius: 1,
//                             blurRadius: 10,
//                             offset: const Offset(0, 2),
//                           ),
//                         ],
//                       ),
//                       child: TextField(
//                         controller: _searchController,
//                         decoration: const InputDecoration(
//                           icon: Icon(Icons.search, color: Colors.grey, size: 20),
//                           hintText: 'Search buses, routes...',
//                           hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
//                           border: InputBorder.none,
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             _searchQuery = value.toLowerCase();
//                           });
//                         },
//                       ),
//                     ),
//                   ),

//                   // Active Filters Chips
//                   if (_selectedDate != null || 
//                       _fromLocation.isNotEmpty || 
//                       _toLocation.isNotEmpty)
//                     SliverToBoxAdapter(
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 16.0, vertical: 8.0),
//                         child: SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: [
//                               if (_fromLocation.isNotEmpty)
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Chip(
//                                     label: Text(
//                                       'From: $_fromLocation',
//                                       style: const TextStyle(fontSize: 12),
//                                     ),
//                                     deleteIcon: const Icon(Icons.close, size: 18),
//                                     onDeleted: () {
//                                       setState(() {
//                                         _fromLocation = '';
//                                         _fromController.clear();
//                                       });
//                                     },
//                                     backgroundColor: const Color(0xFFE3F2FD),
//                                   ),
//                                 ),
//                               if (_toLocation.isNotEmpty)
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Chip(
//                                     label: Text(
//                                       'To: $_toLocation',
//                                       style: const TextStyle(fontSize: 12),
//                                     ),
//                                     deleteIcon: const Icon(Icons.close, size: 18),
//                                     onDeleted: () {
//                                       setState(() {
//                                         _toLocation = '';
//                                         _toController.clear();
//                                       });
//                                     },
//                                     backgroundColor: const Color(0xFFFFE0E0),
//                                   ),
//                                 ),
//                               if (_selectedDate != null)
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 8.0),
//                                   child: Chip(
//                                     label: Text(
//                                       DateFormat('MMM dd, yyyy').format(_selectedDate!),
//                                       style: const TextStyle(fontSize: 12),
//                                     ),
//                                     deleteIcon: const Icon(Icons.close, size: 18),
//                                     onDeleted: () {
//                                       setState(() {
//                                         _selectedDate = null;
//                                       });
//                                     },
//                                     backgroundColor: const Color(0xFFFFF3E0),
//                                   ),
//                                 ),
//                               TextButton.icon(
//                                 onPressed: _clearFilters,
//                                 icon: const Icon(Icons.clear_all, size: 18),
//                                 label: const Text('Clear All'),
//                                 style: TextButton.styleFrom(
//                                   foregroundColor: const Color(0xFF1976D2),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),

//                   // Available Nearby Bus Tickets Section
//                   SliverToBoxAdapter(
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Available Nearby Bus Tickets',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.refresh, color: Color(0xFF1976D2)),
//                             onPressed: _loadTickets,
//                             tooltip: 'Refresh',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Bus Ticket Cards List
//                   SliverFillRemaining(
//                     child: Consumer<BusTicketProvider>(
//                       builder: (context, provider, child) {
//                         if (provider.isLoading) {
//                           return const Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF1976D2),
//                             ),
//                           );
//                         }

//                         // Filter tickets based on all search criteria
//                         List<BusTicket> filteredTickets = provider.tickets;

//                         if (_fromLocation.isNotEmpty) {
//                           filteredTickets = filteredTickets.where((ticket) {
//                             return ticket.pickupPoint
//                                 .toLowerCase()
//                                 .contains(_fromLocation);
//                           }).toList();
//                         }

//                         if (_toLocation.isNotEmpty) {
//                           filteredTickets = filteredTickets.where((ticket) {
//                             return ticket.dropPoint
//                                 .toLowerCase()
//                                 .contains(_toLocation);
//                           }).toList();
//                         }

//                         if (_searchQuery.isNotEmpty) {
//                           filteredTickets = filteredTickets.where((ticket) {
//                             return ticket.busName
//                                     .toLowerCase()
//                                     .contains(_searchQuery) ||
//                                 ticket.pickupPoint
//                                     .toLowerCase()
//                                     .contains(_searchQuery) ||
//                                 ticket.dropPoint
//                                     .toLowerCase()
//                                     .contains(_searchQuery) ||
//                                 ticket.ticketType
//                                     .toLowerCase()
//                                     .contains(_searchQuery);
//                           }).toList();
//                         }

//                         if (filteredTickets.isEmpty) {
//                           return Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.confirmation_number_outlined,
//                                   size: 80,
//                                   color: Colors.grey[300],
//                                 ),
//                                 const SizedBox(height: 16),
//                                 Text(
//                                   _searchQuery.isNotEmpty ||
//                                           _fromLocation.isNotEmpty ||
//                                           _toLocation.isNotEmpty
//                                       ? 'No tickets found matching your search'
//                                       : _selectedDate != null
//                                           ? 'No tickets available for selected date'
//                                           : 'No tickets available',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.grey[600],
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                                 const SizedBox(height: 8),
//                                 if (_selectedDate != null ||
//                                     _searchQuery.isNotEmpty ||
//                                     _fromLocation.isNotEmpty ||
//                                     _toLocation.isNotEmpty)
//                                   TextButton.icon(
//                                     onPressed: _clearFilters,
//                                     icon: const Icon(Icons.clear_all),
//                                     label: const Text('Clear Filters'),
//                                     style: TextButton.styleFrom(
//                                       foregroundColor: const Color(0xFF1976D2),
//                                     ),
//                                   ),
//                               ],
//                             ),
//                           );
//                         }

//                         return RefreshIndicator(
//                           onRefresh: _loadTickets,
//                           color: const Color(0xFF1976D2),
//                           child: ListView.builder(
//                             padding: const EdgeInsets.only(bottom: 20),
//                             itemCount: filteredTickets.length,
//                             itemBuilder: (context, index) {
//                               final ticket = filteredTickets[index];
//                               return GestureDetector(
//                                 onTap: () {
//                                   // Show popup instead of direct navigation
//                                   _showTicketSelectionPopup(ticket);
//                                 },
//                                 child: _buildBusTicketCard(ticket),
//                               );
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildBusTicketCard(BusTicket ticket) {
//     final isAC = ticket.ticketType.toLowerCase().contains('ac') &&
//         !ticket.ticketType.toLowerCase().contains('non');
//     final badgeText = isAC ? 'AC' : 'NON-AC';
//     final badgeColor = isAC ? const Color(0xFFE3F2FD) : const Color(0xFFFFF3E0);
//     final badgeTextColor =
//         isAC ? const Color(0xFF1976D2) : const Color(0xFFFF9800);

//     final departureTime = DateFormat('HH:mm').format(ticket.createdAt);
//     final arrivalTime = DateFormat('HH:mm').format(ticket.dateOfJourney);
//     final dateOfJourney =
//         DateFormat('MMM dd, yyyy').format(ticket.dateOfJourney);

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: ClipPath(
//         clipper: TicketClipper(),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.15),
//                 spreadRadius: 1,
//                 blurRadius: 8,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Row(
//                         children: [
//                           const Icon(
//                             Icons.directions_bus,
//                             size: 20,
//                             color: Colors.black87,
//                           ),
//                           const SizedBox(width: 8),
//                           Expanded(
//                             child: Text(
//                               ticket.busName,
//                               style: const TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.black87,
//                               ),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 8, vertical: 4),
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
//                 const SizedBox(height: 4),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.calendar_today,
//                       size: 12,
//                       color: Colors.grey[600],
//                     ),
//                     const SizedBox(width: 4),
//                     Text(
//                       dateOfJourney,
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             ticket.pickupPoint,
//                             style: TextStyle(
//                               color: Colors.grey[600],
//                               fontSize: 12,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           Text(
//                             departureTime,
//                             style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 8),
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
//                                 decoration: const BoxDecoration(
//                                   color: Color(0xFF4A90E2),
//                                 ),
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
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             ticket.dropPoint,
//                             style: TextStyle(
//                               color: Colors.grey[600],
//                               fontSize: 12,
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.right,
//                           ),
//                           Text(
//                             arrivalTime,
//                             style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 Container(height: 1, color: Colors.grey[200]),
//                 const SizedBox(height: 12),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           '₹ ${ticket.totalPrice.toStringAsFixed(0)}',
//                           style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         Text(
//                           'per ticket',
//                           style: TextStyle(
//                             color: Colors.grey[600],
//                             fontSize: 11,
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
//     double circleRadius = 12;

//     path.lineTo(0, size.height - circleRadius);
//     path.arcToPoint(
//       Offset(0, size.height),
//       radius: Radius.circular(circleRadius),
//       clockwise: false,
//     );

//     path.lineTo(size.width, size.height);
//     path.arcToPoint(
//       Offset(size.width, size.height - circleRadius),
//       radius: Radius.circular(circleRadius),
//       clockwise: false,
//     );

//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }













import 'package:backup_ticket/helper/auth_helper.dart';
import 'package:backup_ticket/provider/auth/user_profile_provider.dart';
import 'package:backup_ticket/provider/selltickets/sell_bus_ticket_provider.dart';
import 'package:backup_ticket/model/bus_ticket_model.dart';
import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class BusScreen extends StatefulWidget {
  const BusScreen({super.key});

  @override
  State<BusScreen> createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  DateTime? _selectedDate;
  String _searchQuery = '';
  String _fromLocation = '';
  String _toLocation = '';
    String _userName = "Guest";

  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();

  // Filter variables
  RangeValues _priceRange = const RangeValues(0, 5000);
  double _maxPrice = 5000;
  double _minPrice = 0;
  Set<String> _selectedBusTypes = {};
  String _sortBy = 'none'; // none, price_low, price_high, time_early, time_late

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadTickets();
      _loadUserName();
    });
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
  void dispose() {
    _searchController.dispose();
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  Future<void> _loadTickets() async {
    final provider = Provider.of<BusTicketProvider>(context, listen: false);
    try {
      await provider.fetchMyTickets();
      // Calculate max and min prices from available tickets
      if (provider.tickets.isNotEmpty) {
        setState(() {
          _maxPrice = provider.tickets
              .map((t) => t.totalPrice)
              .reduce((a, b) => a > b ? a : b);
          _minPrice = provider.tickets
              .map((t) => t.totalPrice)
              .reduce((a, b) => a < b ? a : b);
          _priceRange = RangeValues(_minPrice, _maxPrice);
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error loading tickets: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xFF1976D2),
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      _loadTickets();
    }
  }

  void _clearFilters() {
    setState(() {
      _selectedDate = null;
      _searchQuery = '';
      _fromLocation = '';
      _toLocation = '';
      _searchController.clear();
      _fromController.clear();
      _toController.clear();
      _priceRange = RangeValues(_minPrice, _maxPrice);
      _selectedBusTypes.clear();
      _sortBy = 'none';
    });
    _loadTickets();
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  // Header
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Filters',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setModalState(() {
                              _priceRange = RangeValues(_minPrice, _maxPrice);
                              _selectedBusTypes.clear();
                              _sortBy = 'none';
                            });
                          },
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                  ),

                  // Scrollable content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Sort By Section
                          const Text(
                            'Sort By',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              _buildSortChip('Price: Low to High', 'price_low', setModalState),
                              _buildSortChip('Price: High to Low', 'price_high', setModalState),
                              _buildSortChip('Departure: Early', 'time_early', setModalState),
                              _buildSortChip('Departure: Late', 'time_late', setModalState),
                            ],
                          ),

                          const SizedBox(height: 24),

                          // Price Range Section
                          const Text(
                            'Price Range',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${_priceRange.start.round()}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '₹${_priceRange.end.round()}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          RangeSlider(
                            values: _priceRange,
                            min: _minPrice,
                            max: _maxPrice,
                            divisions: 20,
                            activeColor: const Color(0xFF1976D2),
                            inactiveColor: Colors.grey.shade300,
                            onChanged: (RangeValues values) {
                              setModalState(() {
                                _priceRange = values;
                              });
                            },
                          ),

                          const SizedBox(height: 24),

                          // Bus Type Section
                          const Text(
                            'Bus Type',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              _buildBusTypeChip('AC', setModalState),
                              _buildBusTypeChip('Non-AC', setModalState),
                              _buildBusTypeChip('Sleeper', setModalState),
                              _buildBusTypeChip('Seater', setModalState),
                            ],
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),

                  // Apply Button
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, -2),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            // Update main state with filter values
                          });
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1976D2),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Apply Filters',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSortChip(String label, String value, StateSetter setModalState) {
    final isSelected = _sortBy == value;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        setModalState(() {
          _sortBy = selected ? value : 'none';
        });
      },
      selectedColor: const Color(0xFF1976D2),
      checkmarkColor: Colors.white,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontSize: 13,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }

  Widget _buildBusTypeChip(String label, StateSetter setModalState) {
    final isSelected = _selectedBusTypes.contains(label);
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        setModalState(() {
          if (selected) {
            _selectedBusTypes.add(label);
          } else {
            _selectedBusTypes.remove(label);
          }
        });
      },
      selectedColor: const Color(0xFF1976D2),
      checkmarkColor: Colors.white,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontSize: 13,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }

  void _showTicketSelectionPopup(BusTicket ticket) {
    int selectedTicketCount = 1;
    int maxTickets = ticket.numberOfTickets;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Select Tickets',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.close, color: Colors.grey),
                            onPressed: () => Navigator.pop(context),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.directions_bus,
                                          size: 18, color: Color(0xFF1976D2)),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          ticket.busName,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          ticket.pickupPoint,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward,
                                          size: 14, color: Colors.grey),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          ticket.dropPoint,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Available Tickets: $maxTickets',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFF1976D2)
                                        .withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'Number of Tickets',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: selectedTicketCount > 1
                                              ? const Color(0xFF1976D2)
                                              : Colors.grey[300],
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          icon: const Icon(Icons.remove,
                                              color: Colors.white, size: 20),
                                          onPressed: selectedTicketCount > 1
                                              ? () {
                                                  setDialogState(() {
                                                    selectedTicketCount--;
                                                  });
                                                }
                                              : null,
                                          padding: const EdgeInsets.all(8),
                                          constraints: const BoxConstraints(),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFE3F2FD),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          selectedTicketCount.toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1976D2),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              selectedTicketCount < maxTickets
                                                  ? const Color(0xFF1976D2)
                                                  : Colors.grey[300],
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                          icon: const Icon(Icons.add,
                                              color: Colors.white, size: 20),
                                          onPressed:
                                              selectedTicketCount < maxTickets
                                                  ? () {
                                                      setDialogState(() {
                                                        selectedTicketCount++;
                                                      });
                                                    }
                                                  : null,
                                          padding: const EdgeInsets.all(8),
                                          constraints: const BoxConstraints(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Total Amount',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Text(
                                    '₹ ${(ticket.totalPrice * selectedTicketCount).toStringAsFixed(0)}',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1976D2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BusDetailsScreen(
                                  ticket: ticket,
                                  nooftickets:
                                      selectedTicketCount.toString(),
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1976D2),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Proceed to Book',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<BusTicket> _applyFiltersAndSort(List<BusTicket> tickets) {
    List<BusTicket> filtered = tickets;

    // Apply location filters
    if (_fromLocation.isNotEmpty) {
      filtered = filtered.where((ticket) {
        return ticket.pickupPoint.toLowerCase().contains(_fromLocation);
      }).toList();
    }

    if (_toLocation.isNotEmpty) {
      filtered = filtered.where((ticket) {
        return ticket.dropPoint.toLowerCase().contains(_toLocation);
      }).toList();
    }

    // Apply search query
    if (_searchQuery.isNotEmpty) {
      filtered = filtered.where((ticket) {
        return ticket.busName.toLowerCase().contains(_searchQuery) ||
            ticket.pickupPoint.toLowerCase().contains(_searchQuery) ||
            ticket.dropPoint.toLowerCase().contains(_searchQuery) ||
            ticket.ticketType.toLowerCase().contains(_searchQuery);
      }).toList();
    }

    // Apply price range filter
    filtered = filtered.where((ticket) {
      return ticket.totalPrice >= _priceRange.start &&
          ticket.totalPrice <= _priceRange.end;
    }).toList();

    // Apply bus type filter
    if (_selectedBusTypes.isNotEmpty) {
      filtered = filtered.where((ticket) {
        return _selectedBusTypes.any((type) =>
            ticket.ticketType.toLowerCase().contains(type.toLowerCase()));
      }).toList();
    }

    // Apply sorting
    switch (_sortBy) {
      case 'price_low':
        filtered.sort((a, b) => a.totalPrice.compareTo(b.totalPrice));
        break;
      case 'price_high':
        filtered.sort((a, b) => b.totalPrice.compareTo(a.totalPrice));
        break;
      case 'time_early':
        filtered.sort((a, b) => a.createdAt.compareTo(b.createdAt));
        break;
      case 'time_late':
        filtered.sort((a, b) => b.createdAt.compareTo(a.createdAt));
        break;
    }

    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(90),
      //   child: AppBar(
      //     automaticallyImplyLeading: false,
      //     elevation: 0,
      //     flexibleSpace: ClipRRect(
      //       borderRadius: const BorderRadius.only(
      //         bottomLeft: Radius.circular(25),
      //         bottomRight: Radius.circular(25),
      //       ),
      //       child: Container(
      //         decoration: const BoxDecoration(
      //           gradient: LinearGradient(
      //             colors: [Color(0xFF1976D2), Color(0xFF0D47A1)],
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //           ),
      //         ),
      //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      //         child: SafeArea(
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   // Row(
      //                   //   children: const [
      //                   //     Icon(Icons.send, color: Colors.white, size: 18),
      //                   //     SizedBox(width: 5),
      //                   //     Text(
      //                   //       "Hyderabad, Telangana..",
      //                   //       style: TextStyle(
      //                   //         color: Colors.white,
      //                   //         fontSize: 16,
      //                   //         fontWeight: FontWeight.w600,
      //                   //       ),
      //                   //     ),
      //                   //     Icon(
      //                   //       Icons.keyboard_arrow_down,
      //                   //       color: Colors.white,
      //                   //       size: 20,
      //                   //     ),
      //                   //   ],
      //                   // ),

      //                    Row(
      //                     children: [
      //                       const Icon(Icons.person, color: Colors.white, size: 18),
      //                       const SizedBox(width: 8),
      //                       Text(
      //                         "Hello, $_userName",
      //                         style: const TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 16,
      //                           fontWeight: FontWeight.w600,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   // const SizedBox(height: 2),
      //                   // const Text(
      //                   //   "       Hyderabad, Telangana, India",
      //                   //   style: TextStyle(color: Colors.white, fontSize: 12),
      //                   // ),
      //                 ],
      //               ),
      //               // Container(
      //               //   padding: const EdgeInsets.all(8),
      //               //   decoration: BoxDecoration(
      //               //     color: Colors.white,
      //               //     shape: BoxShape.circle,
      //               //     boxShadow: [
      //               //       BoxShadow(
      //               //         color: Colors.black26,
      //               //         blurRadius: 4,
      //               //         offset: Offset(0, 2),
      //               //       ),
      //               //     ],
      //               //   ),
      //               //   child: GestureDetector(
      //               //     onTap: () {
      //               //       Navigator.push(
      //               //         context,
      //               //         MaterialPageRoute(
      //               //           builder: (context) => NotificationScreen(),
      //               //         ),
      //               //       );
      //               //     },
      //               //     child: const Icon(
      //               //       Icons.notifications_none,
      //               //       color: Colors.black87,
      //               //       size: 22,
      //               //     ),
      //               //   ),
      //               // ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

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
                    // Left side (profile image and name)
                    Row(
                      children: [
                        // Profile Image
                        Consumer<UserProfileProvider>(
                          builder: (context, profileProvider, child) {
                            return CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: profileProvider.profileImageUrl != null &&
                                        profileProvider.profileImageUrl!.isNotEmpty
                                    ? NetworkImage(profileProvider.profileImageUrl!)
                                    : null,
                                backgroundColor: Colors.grey[300],
                                child: profileProvider.profileImageUrl == null ||
                                        profileProvider.profileImageUrl!.isEmpty
                                    ? const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                        size: 24,
                                      )
                                    : null,
                              ),
                            );
                          },
                        ),
                        const SizedBox(width: 12),
                        // Name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Hello,",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              _userName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Right side (notification) - currently commented out
                    // You can uncomment this if you want the notification icon back
                    // Container(
                    //   padding: const EdgeInsets.all(8),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     shape: BoxShape.circle,
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.black26,
                    //         blurRadius: 4,
                    //         offset: Offset(0, 2),
                    //       ),
                    //     ],
                    //   ),
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => NotificationScreen(),
                    //         ),
                    //       );
                    //     },
                    //     child: const Icon(
                    //       Icons.notifications_none,
                    //       color: Colors.black87,
                    //       size: 22,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.trip_origin,
                                    color: Color(0xFF1976D2), size: 20),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: TextField(
                                    controller: _fromController,
                                    decoration: const InputDecoration(
                                      hintText: 'From',
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _fromLocation = value.toLowerCase();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.location_on,
                                    color: Colors.red, size: 20),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: TextField(
                                    controller: _toController,
                                    decoration: const InputDecoration(
                                      hintText: 'To',
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 16),
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _toLocation = value.toLowerCase();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: _selectDate,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 14),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.calendar_today,
                                            color: Color(0xFF1976D2), size: 18),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Text(
                                            _selectedDate != null
                                                ? DateFormat('dd MMM, yyyy')
                                                    .format(_selectedDate!)
                                                : 'Date of Journey',
                                            style: TextStyle(
                                              color: _selectedDate != null
                                                  ? Colors.black87
                                                  : Colors.grey,
                                              fontSize: 14,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF1976D2),
                                      Color(0xFF0D47A1)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: _loadTickets,
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 14),
                                      child: const Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: TextField(
                                controller: _searchController,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.search,
                                      color: Colors.grey, size: 20),
                                  hintText: 'Search buses, routes...',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _searchQuery = value.toLowerCase();
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF1976D2),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: _showFilterBottomSheet,
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  padding: const EdgeInsets.all(13),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.tune,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      if (_selectedBusTypes.isNotEmpty ||
                                          _sortBy != 'none')
                                        Container(
                                          margin: const EdgeInsets.only(left: 4),
                                          padding: const EdgeInsets.all(4),
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                          ),
                                          constraints: const BoxConstraints(
                                            minWidth: 8,
                                            minHeight: 8,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_selectedDate != null ||
                      _fromLocation.isNotEmpty ||
                      _toLocation.isNotEmpty ||
                      _selectedBusTypes.isNotEmpty ||
                      _sortBy != 'none')
                    SliverToBoxAdapter(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              if (_fromLocation.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Chip(
                                    label: Text(
                                      'From: $_fromLocation',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    deleteIcon:
                                        const Icon(Icons.close, size: 18),
                                    onDeleted: () {
                                      setState(() {
                                        _fromLocation = '';
                                        _fromController.clear();
                                      });
                                    },
                                    backgroundColor: const Color(0xFFE3F2FD),
                                  ),
                                ),
                              if (_toLocation.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Chip(
                                    label: Text(
                                      'To: $_toLocation',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    deleteIcon:
                                        const Icon(Icons.close, size: 18),
                                    onDeleted: () {
                                      setState(() {
                                        _toLocation = '';
                                        _toController.clear();
                                      });
                                    },
                                    backgroundColor: const Color(0xFFFFE0E0),
                                  ),
                                ),
                              if (_selectedDate != null)
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Chip(
                                    label: Text(
                                      DateFormat('MMM dd, yyyy')
                                          .format(_selectedDate!),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    deleteIcon:
                                        const Icon(Icons.close, size: 18),
                                    onDeleted: () {
                                      setState(() {
                                        _selectedDate = null;
                                      });
                                    },
                                    backgroundColor: const Color(0xFFFFF3E0),
                                  ),
                                ),
                              if (_sortBy != 'none')
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Chip(
                                    label: Text(
                                      'Sorted: ${_sortBy.replaceAll('_', ' ')}',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    deleteIcon:
                                        const Icon(Icons.close, size: 18),
                                    onDeleted: () {
                                      setState(() {
                                        _sortBy = 'none';
                                      });
                                    },
                                    backgroundColor: const Color(0xFFE8F5E9),
                                  ),
                                ),
                              if (_selectedBusTypes.isNotEmpty)
                                ..._selectedBusTypes.map((type) => Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Chip(
                                        label: Text(
                                          type,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        deleteIcon:
                                            const Icon(Icons.close, size: 18),
                                        onDeleted: () {
                                          setState(() {
                                            _selectedBusTypes.remove(type);
                                          });
                                        },
                                        backgroundColor:
                                            const Color(0xFFFCE4EC),
                                      ),
                                    )),
                              TextButton.icon(
                                onPressed: _clearFilters,
                                icon: const Icon(Icons.clear_all, size: 18),
                                label: const Text('Clear All'),
                                style: TextButton.styleFrom(
                                  foregroundColor: const Color(0xFF1976D2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Available Nearby Bus Tickets',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.refresh,
                                color: Color(0xFF1976D2)),
                            onPressed: _loadTickets,
                            tooltip: 'Refresh',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    child: Consumer<BusTicketProvider>(
                      builder: (context, provider, child) {
                        if (provider.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF1976D2),
                            ),
                          );
                        }

                        List<BusTicket> filteredTickets =
                            _applyFiltersAndSort(provider.tickets);

                        if (filteredTickets.isEmpty) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.confirmation_number_outlined,
                                  size: 80,
                                  color: Colors.grey[300],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  _searchQuery.isNotEmpty ||
                                          _fromLocation.isNotEmpty ||
                                          _toLocation.isNotEmpty ||
                                          _selectedBusTypes.isNotEmpty
                                      ? 'No tickets found matching your filters'
                                      : _selectedDate != null
                                          ? 'No tickets available for selected date'
                                          : 'No tickets available',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                TextButton.icon(
                                  onPressed: _clearFilters,
                                  icon: const Icon(Icons.clear_all),
                                  label: const Text('Clear Filters'),
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color(0xFF1976D2),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        return RefreshIndicator(
                          onRefresh: _loadTickets,
                          color: const Color(0xFF1976D2),
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 20),
                            itemCount: filteredTickets.length,
                            itemBuilder: (context, index) {
                              final ticket = filteredTickets[index];
                              return GestureDetector(
                                onTap: () {
                                  _showTicketSelectionPopup(ticket);
                                },
                                child: _buildBusTicketCard(ticket),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBusTicketCard(BusTicket ticket) {
    final isAC = ticket.ticketType.toLowerCase().contains('ac') &&
        !ticket.ticketType.toLowerCase().contains('non');
    final badgeText = isAC ? 'AC' : 'NON-AC';
    final badgeColor = isAC ? const Color(0xFFE3F2FD) : const Color(0xFFFFF3E0);
    final badgeTextColor =
        isAC ? const Color(0xFF1976D2) : const Color(0xFFFF9800);

    final departureTime = DateFormat('HH:mm').format(ticket.createdAt);
    final arrivalTime = DateFormat('HH:mm').format(ticket.dateOfJourney);
    final dateOfJourney =
        DateFormat('MMM dd, yyyy').format(ticket.dateOfJourney);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ClipPath(
        clipper: TicketClipper(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.directions_bus,
                            size: 20,
                            color: Colors.black87,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              ticket.busName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
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
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 12,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      dateOfJourney,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket.pickupPoint,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
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
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
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
                                decoration: const BoxDecoration(
                                  color: Color(0xFF4A90E2),
                                ),
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket.dropPoint,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
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
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(height: 1, color: Colors.grey[200]),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹ ${ticket.totalPrice.toStringAsFixed(0)}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          'per ticket',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 11,
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

// Add this TicketClipper class if you don't have it
class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}