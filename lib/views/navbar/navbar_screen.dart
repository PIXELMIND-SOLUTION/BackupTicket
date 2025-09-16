// ignore_for_file: deprecated_member_use

import 'package:backup_ticket/provider/navbar/navbar_provider.dart';
import 'package:backup_ticket/views/Home/bus_screen.dart';
import 'package:backup_ticket/views/Home/sell_screen.dart';
import 'package:backup_ticket/views/Home/movie_screen.dart';
import 'package:backup_ticket/views/Home/profile_screen.dart';
import 'package:backup_ticket/views/Home/train_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});
  
  final List<Widget> _screens = const [
    MovieScreen(),
    BusScreen(),
    SellScreen(),
    TrainScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavbarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: _screens[provider.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      context,
                      icon: Icons.movie_outlined,
                      label: 'Movie',
                      index: 0,
                      isSelected: provider.currentIndex == 0,
                    ),
                    _buildNavItem(
                      context,
                      icon: Icons.directions_bus_outlined,
                      label: 'Bus',
                      index: 1,
                      isSelected: provider.currentIndex == 1,
                    ),
                    _buildCenterNavItem(
                      context,
                      icon: Icons.add,
                      
                      index: 2,
                      isSelected: provider.currentIndex == 2,
                    ),
                    _buildNavItem(
                      context,
                      icon: Icons.train,
                      label: 'Train',
                      index: 3,
                      isSelected: provider.currentIndex == 3,
                    ),
                    _buildNavItem(
                      context,
                      icon: Icons.person_outline,
                      label: 'Profile',
                      index: 4,
                      isSelected: provider.currentIndex == 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required int index,
    required bool isSelected,
  }) {
    final provider = Provider.of<BottomNavbarProvider>(context, listen: false);
    
    return GestureDetector(
      onTap: () => provider.setIndex(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFF4A90E2) : Colors.grey[600],
              size: 24,
            ),
            if (label.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? const Color(0xFF4A90E2) : Colors.grey[600],
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildCenterNavItem(
    BuildContext context, {
    required IconData icon,
    required int index,
    required bool isSelected,
  }) {
    final provider = Provider.of<BottomNavbarProvider>(context, listen: false);
    
    return GestureDetector(
      onTap: () => provider.setIndex(index),
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: const Color(0xFF4A90E2),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF4A90E2).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}