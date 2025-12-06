import 'dart:ui';

import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const radius = 20.0;
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 2 - radius);
    path.arcToPoint(
      Offset(size.width, size.height / 2 + radius),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height / 2 + radius);
    path.arcToPoint(
      Offset(0, size.height / 2 - radius),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(TicketClipper oldClipper) => false;
}
