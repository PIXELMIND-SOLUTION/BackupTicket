import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us",style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon:Icon(Icons.arrow_back_ios)),
      ),
      
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// LOGO OR HEADER
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.blue.shade100,
                    child: const Icon(
                      Icons.movie_creation_outlined,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "BackupTicket",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// ABOUT DESCRIPTION
            Text(
              "Who We Are",
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "BackupTicket is a modern and seamless ticket booking platform designed "
              "to give users the best experience in booking movie, event, and show tickets. "
              "We focus on fast booking, secure payments, and delivering real-time updates.",
              style: theme.textTheme.bodyMedium?.copyWith(height: 1.5),
            ),

            const SizedBox(height: 25),

            /// OUR MISSION
            Text(
              "Our Mission",
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "To bring simplicity, transparency, and convenience to the ticket booking "
              "experience through innovative technology and user-centric design.",
              style: theme.textTheme.bodyMedium?.copyWith(height: 1.5),
            ),

            const SizedBox(height: 25),

            /// FEATURES
            Text(
              "What We Offer",
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),

            _buildFeatureTile(
              icon: Icons.event_seat_outlined,
              title: "Easy Ticket Booking",
              description: "Quick and hassle-free ticket booking in a few taps.",
            ),
            _buildFeatureTile(
              icon: Icons.payments_outlined,
              title: "Secure Payments",
              description: "Multiple payment options with industry-grade security.",
            ),
            // _buildFeatureTile(
            //   icon: Icons.notifications_active_outlined,
            //   title: "Real-Time Notifications",
            //   description: "Get instant updates about seat confirmations and offers.",
            // ),
            _buildFeatureTile(
              icon: Icons.support_agent_outlined,
              title: "24/7 Support",
              description: "Our team is always ready to assist you anytime.",
            ),

            const SizedBox(height: 30),

            /// CONTACT US SECTION
            Text(
              "Contact Us",
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),

            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text("support@ticketease.com"),
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text("www.ticketease.com"),
            ),
            ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: const Text("Calicut, Kerala, India"),
            ),

            const SizedBox(height: 30),

            Center(
              child: Text(
                "© 2025 TicketEase. All rights reserved.",
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureTile({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28, color: Colors.blue),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
