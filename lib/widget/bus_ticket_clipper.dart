
import 'dart:ui';

import 'package:flutter/material.dart';

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
    path.quadraticBezierTo(size.width, size.height, size.width - 12, size.height);
    
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