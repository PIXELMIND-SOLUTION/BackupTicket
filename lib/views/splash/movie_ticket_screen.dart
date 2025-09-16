import 'package:backup_ticket/views/splash/bus_ticket_screen.dart';
import 'package:flutter/material.dart';

class MovieTicketsScreen extends StatelessWidget {
  const MovieTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SizedBox(height: 120),
          // Main content area with blue blob background
          Expanded(
            flex: 3,
            child: Container(
              width: 400,
              height: 360, // Fixed height to control background size
              child: Stack(
                children: [
                  // Movie background image
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/movie.png'),
                            fit: BoxFit.contain, // Changed from cover to contain
                            alignment: Alignment.topCenter, // Align to top
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(200, 100),
                            bottomRight: Radius.elliptical(200, 100),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Content
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Movie illustration - replaced with asset image
                        Container(
                          width: 250,
                          height: 250,
                          child: Image.asset(
                            'assets/firstscreen.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Text(
              'Movie Tickets',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          // Bottom section
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 32, height: 1.2),
                      children: [
                        TextSpan(
                          text: 'Buy ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Unused\nTickets ',
                          style: TextStyle(
                            color: Color(0xFF214194),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Easily',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    'Explore last-minute deals from\nreal users in your city.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.4,
                    ),
                  ),

                  Spacer(),

                  // Next button
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF4F75FF), Color(0xFF2E5BFF)],
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF2E5BFF).withOpacity(0.3),
                            blurRadius: 15,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BusTicketScreen(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
