import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text(
          "Help & Support",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ---------- Animated Header ----------
            Center(
              child: FadeInDown(
                duration: const Duration(milliseconds: 800),
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Pulse(
                    infinite: true,
                    duration: const Duration(seconds: 2),
                    child: Icon(
                      Icons.help_center_rounded,
                      size: 120,
                      color: Colors.blue.shade400,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Center(
              child: FadeIn(
                delay: const Duration(milliseconds: 400),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      "How can we help you today?",
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 70),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ----------- Help Options ------------
            FadeInUp(
              delay: const Duration(milliseconds: 200),
              child: _buildHelpCard(
                title: "Booking Issues",
                subtitle: "Facing issues while booking a ticket?",
                icon: Icons.confirmation_num_outlined,
                color: Colors.blue,
                onTap: () {},
              ),
            ),

            FadeInUp(
              delay: const Duration(milliseconds: 300),
              child: _buildHelpCard(
                title: "Payment Problems",
                subtitle: "Payment failed or pending?",
                icon: Icons.payment,
                color: Colors.orange,
                onTap: () {},
              ),
            ),

            FadeInUp(
              delay: const Duration(milliseconds: 400),
              child: _buildHelpCard(
                title: "Refund Status",
                subtitle: "Track your ticket refund status.",
                icon: Icons.receipt_long,
                color: Colors.green,
                onTap: () {},
              ),
            ),

            FadeInUp(
              delay: const Duration(milliseconds: 500),
              child: _buildHelpCard(
                title: "Account & Login",
                subtitle: "Issues with login or profile?",
                icon: Icons.person_outline,
                color: Colors.purple,
                onTap: () {},
              ),
            ),

            FadeInUp(
              delay: const Duration(milliseconds: 600),
              child: _buildHelpCard(
                title: "Contact Support",
                subtitle: "Chat or email our support team.",
                icon: Icons.support_agent,
                color: Colors.red,
                onTap: () {},
              ),
            ),

            const SizedBox(height: 30),

            // ---------- Bottom Message ----------
            Center(
              child: FadeIn(
                delay: const Duration(milliseconds: 800),
                child: Text(
                  "We're here to assist you 24/7",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =================== HELP CARD WIDGET ======================
  Widget _buildHelpCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.15),
              radius: 24,
              child: Icon(icon, color: color, size: 26),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}