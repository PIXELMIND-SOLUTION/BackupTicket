import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              "Your privacy is important to us. This Privacy Policy explains how our "
              "booking application (for movies and bus tickets) collects, uses, "
              "and protects your information.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Information We Collect
            _buildSectionTitle("1. Information We Collect"),
            _buildSectionContent(
              "• Personal Information: Name, email, phone number, and payment details "
              "when you book tickets.\n"
              "• Booking Information: Details of the movies or bus tickets you purchase.\n"
              "• Device Information: Device type, OS version, and app usage data.",
            ),

            // How We Use Information
            _buildSectionTitle("2. How We Use Your Information"),
            _buildSectionContent(
              "• To process your ticket bookings and payments.\n"
              "• To send booking confirmations, updates, and reminders.\n"
              "• To improve app performance and user experience.\n"
              "• To provide customer support and resolve issues.",
            ),

            // Sharing Information
            _buildSectionTitle("3. Sharing of Information"),
            _buildSectionContent(
              "We do not sell your personal data. We may share your information only with:\n"
              "• Service providers (such as payment gateways and bus/movie partners).\n"
              "• Authorities if required by law.",
            ),

            // Data Security
            _buildSectionTitle("4. Data Security"),
            _buildSectionContent(
              "We implement industry-standard security measures to protect your data. "
              "However, no method of transmission over the Internet is 100% secure.",
            ),

            // Your Choices
            _buildSectionTitle("5. Your Choices"),
            _buildSectionContent(
              "• You may update your account details at any time.\n"
              "• You can opt out of promotional messages through settings.\n"
              "• You may request deletion of your account and data.",
            ),

            // Contact Us
            _buildSectionTitle("6. Contact Us"),
            _buildSectionContent(
              "If you have any questions about this Privacy Policy, please contact us at:\n"
              "support@bookmyticketapp.com",
            ),

            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 12),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text("Back", style: TextStyle(fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Helper for Section Title
  static Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 6),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Helper for Section Content
  static Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: const TextStyle(fontSize: 15, height: 1.5),
    );
  }
}
