// import 'package:backup_ticket/views/Details/detail_screen.dart';
// import 'package:backup_ticket/views/Nearby/nearby_ticket_screen.dart';
// import 'package:backup_ticket/views/notifications/notification_screen.dart';
// import 'package:backup_ticket/views/seeall/see_all_screen.dart';
// import 'package:flutter/material.dart';

// class MovieScreen extends StatelessWidget {
//   const MovieScreen({super.key});

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
//       backgroundColor: const Color(0xFFF5F5F5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         // Search Bar
//                         Expanded(
//                           child: Container(
//                             margin: const EdgeInsets.all(16.0),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 16.0,
//                             ),
//                             height: 50,
//                             decoration: BoxDecoration(
//                               border: Border.all(),
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(25),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey.withOpacity(0.1),
//                                   spreadRadius: 1,
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 2),
//                                 ),
//                               ],
//                             ),
//                             child: const Row(
//                               children: [
//                                 Icon(
//                                   Icons.search,
//                                   color: Colors.grey,
//                                   size: 20,
//                                 ),
//                                 SizedBox(width: 12),
//                                 Expanded(
//                                   child: Text(
//                                     'Search',
//                                     style: TextStyle(
//                                       color: Colors.grey,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),

//                         // Filter Button
//                         Container(
//                           margin: const EdgeInsets.only(right: 16.0),
//                           child: const CircleAvatar(
//                             radius: 25,
//                             backgroundColor: Color(0xFF4A90E2),
//                             child: Icon(
//                               Icons.tune,
//                               color: Colors.white,
//                               size: 20,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),

//                     // Ongoing Movies Section
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Ongoing Movies',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black87,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: const Text(
//                               'See All',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     // Movies Horizontal List
//                     SizedBox(
//                       height: 280,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                         children: [
//                           _buildMovieCard(
//                             'assets/narasimha.png',
//                             'Mahavtar Narasimha',
//                             ['13+', 'Action', 'IMAX'],
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
//                             },
//                             child: _buildMovieCard(
//                               'assets/veeramallu.png',
//                               'Veeramahulu',
//                               ['UA', 'Drama', 'Thriller'],
//                             ),
//                           ),
//                           _buildMovieCard('assets/kubera.png', 'Kubera', [
//                             'A',
//                             'Action',
//                             '2D',
//                           ]),
//                         ],
//                       ),
//                     ),

//                     const SizedBox(height: 24),

//                     // Nearby Resale Tickets Section
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Nearby Resale Tickets',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black87,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAllScreen()));
//                             },
//                             child: const Text(
//                               'See All',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     // Resale Tickets List
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       itemCount: 4,
//                       itemBuilder: (context, index) {
//                         return _buildResaleTicketCard(context);
//                       },
//                     ),

//                     const SizedBox(height: 16),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMovieCard(String imagePath, String title, List<String> badges) {
//     return Container(
//       width: 160,
//       margin: const EdgeInsets.only(right: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Movie Poster with Stack
//           Stack(
//             children: [
//               Container(
//                 height: 220,
//                 width: 160,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.2),
//                       spreadRadius: 1,
//                       blurRadius: 8,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.asset(
//                     imagePath,
//                     fit: BoxFit.cover,
//                     errorBuilder: (context, error, stackTrace) {
//                       return Container(
//                         color: Colors.grey[300],
//                         child: const Icon(
//                           Icons.movie,
//                           size: 40,
//                           color: Colors.grey,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 8),

//           // Movie Title
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w600,
//               color: Colors.black87,
//             ),
//             maxLines: 2,
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//           ),

//           const SizedBox(height: 6),

//           // Badges Row
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: badges.map((badge) => _buildBadge(badge)).toList(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBadge(String text) {
//     Color backgroundColor;
//     Color textColor = Colors.white;

//     switch (text) {
//       case '13+':
//       case 'UA':
//       case 'A':
//         backgroundColor = Colors.grey[700]!;
//         break;
//       case 'Action':
//       case 'Drama':
//       case 'Thriller':
//         backgroundColor = Colors.grey[600]!;
//         break;
//       case 'IMAX':
//       case '2D':
//         backgroundColor = Colors.grey[600]!;
//         break;
//       default:
//         backgroundColor = Colors.grey[600]!;
//     }

//     return Container(
//       margin: const EdgeInsets.only(right: 4),
//       padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(4),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: textColor,
//           fontSize: 10,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     );
//   }

//   Widget _buildResaleTicketCard(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context)=>NearbyTickets()));
//       },
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 12),
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           border: Border.all(),
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.1),
//               spreadRadius: 1,
//               blurRadius: 8,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             // Movie Poster
//             Container(
//               width: 60,
//               height: 80,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(6),
//                 image: const DecorationImage(
//                   image: AssetImage('assets/kubera.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 12),
      
//             // Movie Details
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Kuberaa',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   const Text(
//                     '3D.Telungu',
//                     style: TextStyle(fontSize: 12, color: Colors.grey),
//                   ),
//                   const SizedBox(height: 4),
      
//                   const Text(
//                     '4 Aug 8:30 PM',
//                     style: TextStyle(fontSize: 14, color: Colors.black),
//                   ),
//                   const SizedBox(height: 2),
//                   const Text(
//                     'INOX:GVK One,Hyderabad',
//                     style: TextStyle(fontSize: 12, color: Colors.grey),
//                   ),
//                   const SizedBox(height: 8),
//                 ],
//               ),
//             ),
      
//             // Price
//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text(
//                   '₹200',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }














import 'package:backup_ticket/model/movie_ticket_model.dart';
import 'package:backup_ticket/provider/selltickets/sell_movie_ticket_provider.dart';
import 'package:backup_ticket/views/Details/detail_screen.dart';
import 'package:backup_ticket/views/Nearby/nearby_ticket_screen.dart';
import 'package:backup_ticket/views/notifications/notification_screen.dart';
import 'package:backup_ticket/views/seeall/see_all_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch tickets when the screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MovieTicketProvider>().fetchAllTickets();
    });
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
                    // Left side (location)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.send, color: Colors.white, size: 18),
                            SizedBox(width: 5),
                            Text(
                              "Hyderabad, Telangana..",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        const Text(
                          "       Hyderabad, Telangana, India",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),

                    // Right side (notification)
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
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
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Search Bar
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(16.0),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
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
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    'Search',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Filter Button
                        Container(
                          margin: const EdgeInsets.only(right: 16.0),
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xFF4A90E2),
                            child: Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Ongoing Movies Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Ongoing Movies',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Movies Horizontal List
                    SizedBox(
                      height: 280,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        children: [
                          _buildMovieCard(
                            'assets/narasimha.png',
                            'Mahavtar Narasimha',
                            ['13+', 'Action', 'IMAX'],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                            },
                            child: _buildMovieCard(
                              'assets/veeramallu.png',
                              'Veeramahulu',
                              ['UA', 'Drama', 'Thriller'],
                            ),
                          ),
                          _buildMovieCard('assets/kubera.png', 'Kubera', [
                            'A',
                            'Action',
                            '2D',
                          ]),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Nearby Resale Tickets Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Nearby Resale Tickets',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAllScreen()));
                            },
                            child: const Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,size: 15,)
                        ],
                      ),
                    ),

                    // Resale Tickets List - Updated to use Firebase data
                    Consumer<MovieTicketProvider>(
                      builder: (context, provider, child) {
                        if (provider.isLoading) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }

                        if (provider.error != null) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Error: ${provider.error}',
                                    style: const TextStyle(color: Colors.red),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () => provider.fetchAllTickets(),
                                    child: const Text('Retry'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }

                        if (provider.tickets.isEmpty) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'No tickets available',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          );
                        }

                        // Display only first 4 tickets (for "See All" functionality)
                        final ticketsToShow = provider.tickets.take(4).toList();

                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          itemCount: ticketsToShow.length,
                          itemBuilder: (context, index) {
                            return _buildResaleTicketCard(context, ticketsToShow[index]);
                          },
                        );
                      },
                    ),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieCard(String imagePath, String title, List<String> badges) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Movie Poster with Stack
          Stack(
            children: [
              Container(
                height: 220,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.movie,
                          size: 40,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Movie Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 6),

          // Badges Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: badges.map((badge) => _buildBadge(badge)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(String text) {
    Color backgroundColor;
    Color textColor = Colors.white;

    switch (text) {
      case '13+':
      case 'UA':
      case 'A':
        backgroundColor = Colors.grey[700]!;
        break;
      case 'Action':
      case 'Drama':
      case 'Thriller':
        backgroundColor = Colors.grey[600]!;
        break;
      case 'IMAX':
      case '2D':
        backgroundColor = Colors.grey[600]!;
        break;
      default:
        backgroundColor = Colors.grey[600]!;
    }

    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildResaleTicketCard(BuildContext context, MovieTicket ticket) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => NearbyTickets(),
            settings: RouteSettings(arguments: ticket), // Pass ticket data
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(),
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
            // Movie Poster - Using Firebase image or fallback
            Container(
              width: 60,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: ticket.ticketImageUrl != null && ticket.ticketImageUrl!.isNotEmpty
                    ? Image.network(
                        ticket.ticketImageUrl!,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.movie,
                              color: Colors.grey,
                              size: 30,
                            ),
                          );
                        },
                      )
                    : Container(
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.movie,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 12),

            // Movie Details - Using Firebase data
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ticket.movieName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // Text(
                  //   '${ticket.language} • ${ticket.format ?? '2D'}',
                  //   style: const TextStyle(fontSize: 12, color: Colors.grey),
                  // ),
                  const SizedBox(height: 4),

                  Text(
                    '${_formatDate(ticket.showDate)} ${ticket.showTime}',
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${ticket.theatrePlace}',
                    style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 75, 75, 75)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  
                  // Status indicator
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  //   decoration: BoxDecoration(
                  //     color: _getStatusColor(ticket.status),
                  //     borderRadius: BorderRadius.circular(4),
                  //   ),
                  //   child: Text(
                  //     ticket.status.toUpperCase(),
                  //     style: const TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.w500,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),

            // Price - Using Firebase data
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '₹${ticket.pricePerTicket.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                // if (ticket.originalPrice != ticket.resalePrice)
                //   Text(
                //     '₹${ticket.originalPrice.toStringAsFixed(0)}',
                //     style: const TextStyle(
                //       fontSize: 12,
                //       color: Colors.grey,
                //       decoration: TextDecoration.lineThrough,
                //     ),
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to format date
  String _formatDate(DateTime date) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day} ${months[date.month - 1]}';
  }

  // Helper method to get status color
  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'available':
        return Colors.green;
      case 'sold':
        return Colors.red;
      case 'pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}