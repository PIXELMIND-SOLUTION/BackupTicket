// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class BusTicketPopupWidget extends StatelessWidget {
  const BusTicketPopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Smiley face icon
            Image.asset('assets/busticketimage.png',width:   123,height: 123,),
            
            const SizedBox(height: 24),
            
            // Success text
            const Text(
              'Bus Ticket Purchased\nSuccessfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                height: 1.3,
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Download button
            Container(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Handle download ticket functionality here
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Downloading ticket...'),
                      backgroundColor: Color(0xFF1976D2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1976D2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.save_alt,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Download Ticket',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.orange
                ),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text(' Note: You will recieve the Bus and\n driver information shortly. ',style: TextStyle(fontWeight: FontWeight.w400),),
            )
          ],
        ),
      ),
    );
  }
}