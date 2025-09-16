import 'package:flutter/material.dart';

class PurchasedTickets extends StatefulWidget {
  const PurchasedTickets({super.key});

  @override
  State<PurchasedTickets> createState() => _PurchasedTicketsState();
}

class _PurchasedTicketsState extends State<PurchasedTickets>
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
          'My Purchased Tickets',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: const Color(0xFF4A90E2), // Blue color matching the image
                borderRadius: BorderRadius.circular(26),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
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
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              splashFactory: NoSplash.splashFactory,
              tabs: [
                Tab(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.movie, size: 18),
                      const SizedBox(width: 8),
                      const Text('Movies'),
                    ],
                  ),
                ),
                Tab(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.directions_bus, size: 18),
                      const SizedBox(width: 8),
                      const Text('Bus'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Movies Tab
          ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: 2,
            itemBuilder: (context, index) {
              return _buildMovieTicketCard(context);
            },
          ),
          // Bus Tab
          ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: 2,
            itemBuilder: (context, index) {
              return _buildBusTicketCard(
                companyName: 'Orange Travels',
                badgeText: 'AC',
                badgeColor: Color(0xFFE3F2FD),
                badgeTextColor: Color(0xFF1976D2),
                fromCity: 'Hyderabad',
                toCity: 'Bangalore',
                departureTime: '8:00',
                arrivalTime: '11:30',
                price: '₹ 850',
                seats: 'Seat: 12A',
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMovieTicketCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
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

                // Menu Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.grey),
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),

          // Download Button
          // Container(
          //   width: double.infinity,
          //   margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          //   child: ElevatedButton.icon(
          //     onPressed: () {
          //       // Handle download ticket
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(
          //           content: Text('Downloading ticket...'),
          //           duration: Duration(seconds: 2),
          //         ),
          //       );
          //     },
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Color(0xFF214194),
          //       foregroundColor: Colors.white,
          //       padding: const EdgeInsets.symmetric(vertical: 12),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(8),
          //       ),
          //       elevation: 0,
          //     ),
          //     icon: const Icon(Icons.save_alt, size: 20),
          //     label: const Text(
          //       'Download Ticket',
          //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          //     ),
          //   ),
          // ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF214194), Color(0xFF3F7EF3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton.icon(
              onPressed: () {
                // Handle download ticket
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Downloading ticket...'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Important for gradient
                shadowColor: Colors.transparent, // Remove shadow if needed
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: const Icon(Icons.save_alt, size: 20, color: Colors.white),
              label: const Text(
                'Download Ticket',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
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
      margin: const EdgeInsets.only(bottom: 16),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Company name and badge row
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         const Icon(
                    //           Icons.directions_bus,
                    //           size: 20,
                    //           color: Colors.black87,
                    //         ),
                    //         const SizedBox(width: 8),
                    //         Text(
                    //           companyName,
                    //           style: const TextStyle(
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w600,
                    //             color: Colors.black87,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Container(
                    //       padding: const EdgeInsets.symmetric(
                    //         horizontal: 8,
                    //         vertical: 4,
                    //       ),
                    //       decoration: BoxDecoration(
                    //         color: badgeColor,
                    //         borderRadius: BorderRadius.circular(12),
                    //       ),
                    //       child: Text(
                    //         badgeText,
                    //         style: TextStyle(
                    //           color: badgeTextColor,
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    // Company name, badge, and more options row
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
                        Row(
                          children: [
                            // SizedBox(width: 10,),
                            // AC / badge
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
                            const SizedBox(width: 8),
                            // 3 dots menu
                            GestureDetector(
                              onTap: () {
                                // Handle menu action
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('More options tapped'),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.more_vert,
                                color: Colors.black54,
                                size: 20,
                              ),
                            ),
                          ],
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
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF4A90E2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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

                    // Price and seats info
                  ],
                ),
              ),

              // Download Button
              Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF214194), Color(0xFF3F7EF3)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Handle download ticket
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Downloading ticket...'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Important for gradient
                    shadowColor: Colors.transparent, // Remove shadow if needed
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: const Icon(
                    Icons.save_alt,
                    size: 20,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Download Ticket',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
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
