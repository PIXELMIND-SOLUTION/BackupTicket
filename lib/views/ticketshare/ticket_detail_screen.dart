import 'package:backup_ticket/views/busdetails/bus_details_screen.dart';
import 'package:flutter/material.dart';

class TicketDetailScreen extends StatelessWidget {
  const TicketDetailScreen({super.key});

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
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.black87,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ClipPath(
              clipper: TicketClipper(),
              child: Container(
                height: 390,
                width: 280,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "BUS TICKET",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.directions_bus, size: 80),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        children: [
                          TextSpan(text: "DATE: "),
                          TextSpan(
                            text: "20 MAY 2025",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        children: [
                          TextSpan(text: "DEPARTURE TIME: "),
                          TextSpan(
                            text: "10:30 PM",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        children: [
                          TextSpan(text: "SEAT: "),
                          TextSpan(
                            text: "23A",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        const SizedBox(width: 30),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: [
                              TextSpan(text: "Boarding at: "),
                              TextSpan(
                                text:
                                    "Kukatpally\n                      Hyderabad",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        const SizedBox(width: 30),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: [
                              TextSpan(text: "Destination: "),
                              TextSpan(
                                text:
                                    "Kakinada\n                      Gandhi nagar",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
